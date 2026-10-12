
import { LightningElement } from 'lwc';
import syncCustomer from '@salesforce/apex/MiniErpAccountController.syncCustomer';

export default class MiniErpCustomerSync extends LightningElement {
    customerId = '';
    message = '';

    handleCustomerIdChange(event) {
        this.customerId = event.target.value;
    }

    async handleSync() {
        this.message = 'Syncing customer...';

        try {
            const account = await syncCustomer({
                customerId: this.customerId
            });

            this.message = 'Successfully synced: ' + account.Name;
        } catch (error) {
            this.message = 'Sync failed: ' + error.body.message;
        }
    }
}
