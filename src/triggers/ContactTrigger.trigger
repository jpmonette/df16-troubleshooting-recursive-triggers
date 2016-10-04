/**
 * ContactTrigger is replicating spouse situation
 * @author  Jean-Philippe Monette <jpmonette@mavens.com>
 * @since   2016-09-19
 */
trigger ContactTrigger on Contact (after insert, after update) {

	// Initializing list of Contacts to update
	//List<Contact> spouses = new List<Contact>();

	//// Iterating through inserted or updated Contact records (bulkified!)
	//for(Contact contactRecord : Trigger.new) {
	//	// If Spouse lookup is populated
	//	if(String.isNotBlank(contactRecord.Spouse__c)) {
	//		// Instantiating a Spouse using the Contact class
	//		Contact spouse = new Contact();

	//		spouse.Id = contactRecord.Spouse__c;	// Set record ID to John Doe's ID
	//		spouse.Spouse__c = contactRecord.Id;	// Set Spouse lookup ID to Jane Doe's ID

	//		// Add Spouse record to the record list
	//		spouses.add(spouse);
	//	}
	//}

	//// Updating Spouse records
	//update spouses;

	// Delegate work to ContactTriggerHandler class, with the Trigger context
	ContactTriggerHandler.handle(Trigger.new);
}