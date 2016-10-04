/**
 * UpdateCountTrigger is calculating the total Number of Updates of a Lead records.
 * @author  Jean-Philippe Monette <jpmonette@mavens.com>
 * @since   2016-09-19
 */
trigger UpdateCountTrigger on Lead (before update) {
	// Delegate work to UpdateCountTriggerHandler class, with the Trigger context
	UpdateCountTriggerHandler.handle(Trigger.new);
}