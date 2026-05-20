# encoding: utf-8
require Rails.root.join("config","lessons_data")

class ApplicationController < ActionController::Base
  before_action :load_lessons

  private

  def load_lessons
    #require_relative "../../config/lessons_data"
    @all_lessons = JAVA_LESSONS
  end
end
