// delete.js
'use strict';

const { WorkloadModuleBase } = require('@hyperledger/caliper-core');

class DeleteAssetWorkload extends WorkloadModuleBase {
    constructor() {
        super();
        this.txIndex = 0;
        this.limitIndex = 0;
    }

    async submitTransaction() {
        this.txIndex++;
        let carNumber = 'Client' + this.workerIndex + '_CAR' + this.txIndex.toString();

        let args = {
            contractId: 'fabcar',
            contractVersion: 'v1',
            contractFunction: 'DeleteAsset',
            contractArguments: [carNumber],
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
    return new DeleteAssetWorkload();
}

module.exports.createWorkloadModule = createWorkloadModule;
