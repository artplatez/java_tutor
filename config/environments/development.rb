Rails.application.configure do
  config.enable_reloading          = true
  config.eager_load                = false
  config.consider_all_requests_local = true
  config.server_timing             = true
  config.cache_store               = :memory_store
  config.action_controller.perform_caching = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.log_level                 = :debug
  config.log_tags                  = [:request_id]
end
