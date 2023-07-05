require 'ddtrace'

Datadog.configure do |c|
  c.tracing.instrument :rails
  c.service = 'randrest'
  c.env = 'dev'

  c.tracing.report_hostname = true
  # c.tracing.test_mode.enabled = (ENV['RACK_ENV'] == 'dev')
  c.tracing.log_injection = true
  c.runtime_metrics.enabled = true
  # c.runtime_metrics.statsd = Datadog::Statsd.new
  c.diagnostics.startup_logs.enabled = false
end
