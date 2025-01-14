# RKE2 cluster template

This project contains rke2 cluster template helm chart, which can be applied with values.yaml as configurations to create clusters.

## Reference documenation
https://ranchermanager.docs.rancher.com/reference-guides/cluster-configuration/rancher-server-configuration/rke2-cluster-configuration


## How to deploy


### Values

The general cluster configuration options are available through [values.yaml](./charts/values.yaml).


### Helm chart from remote location

Refer Helm chart package using url:
```
"https://raw.githubusercontent.com/gr8it/cluster-template-examples/main/cluster-template-x.y.z.tgz"
```

### Helm chart from code
To provide your own configuration, modify the original values.yaml and create your own version, and pass it to helm. For example:

```bash
helm install --namespace fleet-default --values ./charts/your-own-values.yaml do-cluster ./charts
```

For different cloud provider options on nodepools, checkout

[Amazonec2](./charts/values-aws.yaml)

[DigitalOcean](./charts/values-do.yaml)

[Harvester](./charts/values-harvester.yaml)

[Vsphere](./charts/values-vsphere.yaml)

[Azure](./charts/values-azure.yaml)

### Version control

The version control is implemented as helm release history and can easily be implemented by UI to provide operation history and rollback.

### Build Helm chart package


Please, use [Makefile](/dev-scripts/Makefile)

```
make -C dev-scripts/ all
```

You can verify your changes in templates using helm:
```
helm --debug template ./charts/ --values ./temp/ps3.yml
```
# License

Copyright (c) 2014-2021 [Rancher Labs, Inc.](http://rancher.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


https://github.com/rancher/rke2-charts/tree/main-source/packages/rke2-cilium