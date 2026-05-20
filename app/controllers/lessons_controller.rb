# encoding: utf-8
class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :evaluate]

  def index
    redirect_to lesson_path(1)
  end

  def show
  end

  # POST /lessons/:id/evaluate
  # パターンマッチングで正誤を判定します（Javaの実行は行いません）
  def evaluate
    user_code = params[:code].to_s.strip
    exercise  = @lesson[:exercise]

    if user_code.empty?
      return render json: {
        correct:  false,
        output:   "",
        feedback: "コードを入力してから送信してください！",
        tip:      nil
      }
    end

    correct = answer_correct?(user_code, exercise)

    render json: {
      correct:         correct,
      expected_output: exercise[:expected_output],
      output:          correct ? exercise[:expected_output] : simulate_output(user_code, exercise),
      feedback:        correct ? seikai_message : fuseikai_message,
      tip:             correct ? nil : exercise[:hint]
    }
  end

  private

  def set_lesson
    @lesson = @all_lessons.find { |l| l[:id] == params[:id].to_i }
    render plain: "レッスンが見つかりません", status: :not_found unless @lesson
  end

  # ── 正誤判定ロジック ────────────────────────────────────────────────────
  def answer_correct?(code, exercise)
    expected = exercise[:expected_output].to_s
    patterns = exercise[:required_patterns] || []

    return false unless patterns.all? { |p| code.include?(p) }

    lines = expected.split("\n").map(&:strip).reject(&:empty?)
    if lines.length > 1
      lines.all? { |line| code.include?(line) }
    else
      code.include?(expected.strip)
    end
  end

  # ── 出力のシミュレート ──────────────────────────────────────────────────
  # パターンマッチング版ではJavaを実行できないため、
  # コード内の println() の引数を抽出して擬似的な出力を生成します。
  def simulate_output(code, _exercise)
    matches = code.scan(/System\.out\.println\s*\(\s*"([^"\\]*)"\s*\)/)
    if matches.any?
      matches.map(&:first).join("\n")
    else
      "（パターンマッチング版では出力を再現できません）"
    end
  end

  def seikai_message
    msgs = [
      "正解です！素晴らしい！🎉",
      "正解！よくできました！🚀",
      "完璧です！その調子で頑張りましょう！✨",
      "正解！Javaの理解が深まっていますね！💪"
    ]
    msgs.sample
  end

  def fuseikai_message
    "惜しい！左の解説をもう一度確認して、再挑戦してみましょう！"
  end
end
