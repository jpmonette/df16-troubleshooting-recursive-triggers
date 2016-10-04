/**
 * UpdateCountTriggerHandler is calculating the total Number of Updates of a Lead records.
 * @author  Jean-Philippe Monette <jpmonette@mavens.com>
 * @since   2016-09-19
 */
public with sharing class UpdateCountTriggerHandler {

	// Defines if a Lead has been incremented or not during transaction
	private static Set<Id> incrementedLeadIds = new Set<Id>();

	/**
	 * Handling Update Count calculation
	 * @param	List<Lead>	List of lead records
	 * @return	void
	 * @access	public static
	 */
	public static void handle(List<Lead> leads) {
		// Incrementing Number of Updates on updated Lead records
		for(Lead leadRecord : leads) {
			// If Lead ID is in the state - skip to next record
			if(incrementedLeadIds.contains(leadRecord.Id)) {
				continue;
			}

			// Increment the Number of Updates field
			leadRecord.Number_of_Updates__c += 1;

			// Add Lead ID to the Set
			incrementedLeadIds.add(leadRecord.Id);
		}
	}

}