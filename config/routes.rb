Rails.application.routes.draw do
  root "lessons#index"
  get  "/lessons/:id",          to: "lessons#show",    as: :lesson
  post "/lessons/:id/evaluate", to: "lessons#evaluate", as: :evaluate_lesson
  get  "up" => "rails/health#show", as: :rails_health_check
end
