// update.js
'use strict';

const { WorkloadModuleBase } = require('@hyperledger/caliper-core');

class UpdateAssetWorkload extends WorkloadModuleBase {
    constructor() {
        super();
        this.txIndex = 0;
        this.limitIndex = 0;
    }

    async submitTransaction() {
        this.txIndex++;
        let carNumber = 'Client' + this.workerIndex + '_CAR' + this.txIndex.toString();
        let newOwner = 'NewOwner' + this.txIndex.toString();

        let args = {
            contractId: 'fabcar',
            contractVersion: 'v1',
            contractFunction: 'UpdateAsset',
            contractArguments: [carNumber, 'NewColor', 10, newOwner, 1000],
            timeout: 30,
            readOnly: false
        };

        if (this.txIndex === this.limitIndex) {
            this.txIndex = 0;
        }

        await this.sutAdapter.sendRequests(args);
    }
}

function createWorkloadModule() {
    return new UpdateAssetWorkload();
}

module.exports.createWorkloadModule = createWorkloadModule;
