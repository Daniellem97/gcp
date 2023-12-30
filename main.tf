resource "google_storage_bucket" "my_bucket" {
  name     = "plsplsplsplsplswork"
  location = "US"
labels = {
    app   = "your_app_value"
    infra = "your_infra_value"
  }
}

resource "datadog_monitor" "foo" {
  name               = "Name for monitor foo"
  type               = "metric alert"
  message            = "Monitor triggered. Notify: @hipchat-channel"
  escalation_message = "Escalation message @pagerduty"

  query = "avg(last_1h):avg:aws.ec2.cpu{environment:foo,host:foo} by {host} > 4"

  monitor_thresholds {
    warning  = 2
    critical = 4
  }

  include_tags = true

  tags = ["foo:bar", "team:fooBar"]
}
