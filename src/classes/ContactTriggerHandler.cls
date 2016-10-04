/**
 * ContactTriggerHandler is replicating spouse situation
 * @author  Jean-Philippe Monette <jpmonette@mavens.com>
 * @since   2016-09-19
 */
public with sharing class ContactTriggerHandler {

	// Defines if the method is currently running or not
	private static Boolean isRunning = false;

	/**
	 * Handling connection of Contact to Spouse
	 * @param	List<Contact>	List of Contact records
	 * @return	void
	 * @access	public static
	 */
	public static void handle(List<Contact> contacts) {
		// If currently running - prevent from running method
		if(isRunning == true) return;

		// Initializing list of Contacts to update
		List<Contact> spouses = new List<Contact>();

		// Iterating through inserted or updated Contact records (bulkified!)
		for(Contact contactRecord : contacts) {
			// If Spouse lookup is populated
			if(String.isNotBlank(contactRecord.Spouse__c)) {
				// Instantiating a Spouse using the Contact class
				Contact spouse = new Contact();

				spouse.Id = contactRecord.Spouse__c;	// Set record ID to John Doe's ID
				spouse.Spouse__c = contactRecord.Id;	// Set Spouse lookup ID to Jane Doe's ID

				// Add Spouse record to the record list
				spouses.add(spouse);
			}
		}

		// Updating Spouse records
		isRunning = true;
		update spouses;
		isRunning = false;
	}

}