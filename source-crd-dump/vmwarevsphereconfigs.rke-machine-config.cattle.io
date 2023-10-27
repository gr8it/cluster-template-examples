Name:         vmwarevsphereconfigs.rke-machine-config.cattle.io
Namespace:    
Labels:       auth.cattle.io/cluster-indexed=true
              cluster.x-k8s.io/v1beta1=v1
              objectset.rio.cattle.io/hash=83832143df357b99e9cd34d08707d6e98e9c32ba
Annotations:  objectset.rio.cattle.io/applied:
                H4sIAAAAAAAA/6xYX2/bOBL/KgRfdheQ3TTOXRMD+9BNkUNwu22wbvJyuIexOLJ4pkiCHMpWi3z3AynZcZw4ods8GZbmz2/+8DdDfedg5R06L43m0/gH14Q6/vXj5bkfS/Oufc8Lvp...
              objectset.rio.cattle.io/id: dynamic-driver-crd
              objectset.rio.cattle.io/owner-gvk: management.cattle.io/v3, Kind=DynamicSchema
              objectset.rio.cattle.io/owner-name: vmwarevsphereconfig
              objectset.rio.cattle.io/owner-namespace: 
API Version:  apiextensions.k8s.io/v1
Kind:         CustomResourceDefinition
Metadata:
  Creation Timestamp:  2023-09-20T07:04:48Z
  Generation:          1
  Resource Version:    4321
  UID:                 53ca9c30-596f-4dfc-a8c5-9cd7d539354d
Spec:
  Conversion:
    Strategy:  None
  Group:       rke-machine-config.cattle.io
  Names:
    Kind:       VmwarevsphereConfig
    List Kind:  VmwarevsphereConfigList
    Plural:     vmwarevsphereconfigs
    Singular:   vmwarevsphereconfig
  Scope:        Namespaced
  Versions:
    Name:  v1
    Schema:
      openAPIV3Schema:
        Properties:
          boot2dockerUrl:
            Default:      
            Description:  vSphere URL for boot2docker image
            Nullable:     true
            Type:         string
          Cfgparam:
            Description:  vSphere vm configuration parameters (used for guestinfo)
            Items:
              Nullable:  true
              Type:      string
            Nullable:    true
            Type:        array
          Clone From:
            Default:      
            Description:  If you choose creation type clone a name of what you want to clone is required
            Nullable:     true
            Type:         string
          Cloud Config:
            Default:      
            Description:  Filepath to a cloud-config yaml file to put into the ISO user-data
            Nullable:     true
            Type:         string
          Cloudinit:
            Default:      
            Description:  vSphere cloud-init filepath or url to add to guestinfo, filepath will be read and base64 encoded before adding
            Nullable:     true
            Type:         string
          Common:
            Properties:
              Cloud Credential Secret Name:
                Nullable:  true
                Type:      string
              Labels:
                Additional Properties:
                  Nullable:  true
                  Type:      string
                Nullable:    true
                Type:        object
              Taints:
                Items:
                  Properties:
                    Effect:
                      Nullable:  true
                      Type:      string
                    Key:
                      Nullable:  true
                      Type:      string
                    Time Added:
                      Nullable:  true
                      Type:      string
                    Value:
                      Nullable:  true
                      Type:      string
                  Type:          object
                Nullable:        true
                Type:            array
            Type:                object
          Content Library:
            Default:      
            Description:  If you choose to clone from a content library template specify the name of the library
            Nullable:     true
            Type:         string
          Cpu Count:
            Default:      2
            Description:  vSphere CPU number for docker VM
            Nullable:     true
            Type:         string
          Creation Type:
            Default:      legacy
            Description:  Creation type when creating a new virtual machine. Supported values: vm, template, library, legacy
            Nullable:     true
            Type:         string
          Custom Attribute:
            Description:  vSphere custom attribute, format key/value e.g. '200=my custom value'
            Items:
              Nullable:  true
              Type:      string
            Nullable:    true
            Type:        array
          Datacenter:
            Default:      
            Description:  vSphere datacenter for virtual machine
            Nullable:     true
            Type:         string
          Datastore:
            Default:      
            Description:  vSphere datastore for virtual machine
            Nullable:     true
            Type:         string
          Datastore Cluster:
            Default:      
            Description:  vSphere datastore cluster for virtual machine
            Nullable:     true
            Type:         string
          Disk Size:
            Default:      20480
            Description:  vSphere size of disk for docker VM (in MB)
            Nullable:     true
            Type:         string
          Folder:
            Default:      
            Description:  vSphere folder for the docker VM. This folder must already exist in the datacenter
            Nullable:     true
            Type:         string
          Hostsystem:
            Default:      
            Description:  vSphere compute resource where the docker VM will be instantiated. This can be omitted if using a cluster with DRS
            Nullable:     true
            Type:         string
          Memory Size:
            Default:      2048
            Description:  vSphere size of memory for docker VM (in MB)
            Nullable:     true
            Type:         string
          Network:
            Description:  vSphere network where the virtual machine will be attached
            Items:
              Nullable:  true
              Type:      string
            Nullable:    true
            Type:        array
          Os:
            Default:      linux
            Description:  If using a non-B2D image you can specify the desired machine OS
            Nullable:     true
            Type:         string
          Password:
            Default:      
            Description:  vSphere password
            Nullable:     true
            Type:         string
          Pool:
            Default:      
            Description:  vSphere resource pool for docker VM
            Nullable:     true
            Type:         string
          Provider ID:
            Nullable:  true
            Type:      string
          Ssh Password:
            Default:      tcuser
            Description:  If using a non-B2D image you can specify the ssh password
            Nullable:     true
            Type:         string
          Ssh Port:
            Default:      22
            Description:  If using a non-B2D image you can specify the ssh port
            Nullable:     true
            Type:         string
          Ssh User:
            Default:      docker
            Description:  If using a non-B2D image you can specify the ssh user
            Nullable:     true
            Type:         string
          Ssh User Group:
            Default:      staff
            Description:  If using a non-B2D image the uploaded keys will need chown'ed, defaults to staff e.g. docker:staff
            Nullable:     true
            Type:         string
          Tag:
            Description:  vSphere tag id e.g. urn:xxx
            Items:
              Nullable:  true
              Type:      string
            Nullable:    true
            Type:        array
          Username:
            Default:      
            Description:  vSphere username
            Nullable:     true
            Type:         string
          Vapp Ipallocationpolicy:
            Default:      
            Description:  vSphere vApp IP allocation policy. Supported values are: dhcp, fixed, transient and fixedAllocated
            Nullable:     true
            Type:         string
          Vapp Ipprotocol:
            Default:      
            Description:  vSphere vApp IP protocol for this deployment. Supported values are: IPv4 and IPv6
            Nullable:     true
            Type:         string
          Vapp Property:
            Description:  vSphere vApp properties
            Items:
              Nullable:  true
              Type:      string
            Nullable:    true
            Type:        array
          Vapp Transport:
            Default:      
            Description:  vSphere OVF environment transports to use for properties. Supported values are: iso and com.vmware.guestInfo
            Nullable:     true
            Type:         string
          Vcenter:
            Default:      
            Description:  vSphere IP/hostname for vCenter
            Nullable:     true
            Type:         string
          Vcenter Port:
            Default:      443
            Description:  vSphere Port for vCenter
            Nullable:     true
            Type:         string
        Type:             object
    Served:               true
    Storage:              true
Status:
  Accepted Names:
    Kind:       VmwarevsphereConfig
    List Kind:  VmwarevsphereConfigList
    Plural:     vmwarevsphereconfigs
    Singular:   vmwarevsphereconfig
  Conditions:
    Last Transition Time:  2023-09-20T07:04:48Z
    Message:               no conflicts found
    Reason:                NoConflicts
    Status:                True
    Type:                  NamesAccepted
    Last Transition Time:  2023-09-20T07:04:48Z
    Message:               the initial names have been accepted
    Reason:                InitialNamesAccepted
    Status:                True
    Type:                  Established
  Stored Versions:
    v1
Events:  <none>
