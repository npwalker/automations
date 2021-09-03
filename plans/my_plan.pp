# This is the structure of a simple plan. To learn more about writing
# Puppet plans, see the documentation: http://pup.pt/bolt-puppet-plans

# The summary sets the description of the plan that will appear
# in 'bolt plan show' output. Bolt uses puppet-strings to parse the
# summary and parameters from the plan.
# @summary A plan created with bolt plan new.
# @param targets The targets to run on.
plan automations::my_plan (
  TargetSpec $targets = "localhost"
) {
  out::message("Hello from automations::my_plan")
  $command_result = run_command('whoami', $targets)
  return $command_result
}
