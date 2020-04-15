
---
title: "Instance"
block_external_search_index: true
---






## Create a Instance Resource

{{< chooser language "javascript,typescript,python,go,csharp" / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/openstack/compute/#Instance">Instance</a></span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">args</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/openstack/compute/#InstanceArgs">InstanceArgs</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nf">Instance</span><span class="p">(resource_name, opts=None, </span>access_ip_v4=None<span class="p">, </span>access_ip_v6=None<span class="p">, </span>admin_pass=None<span class="p">, </span>availability_zone=None<span class="p">, </span>block_devices=None<span class="p">, </span>config_drive=None<span class="p">, </span>flavor_id=None<span class="p">, </span>flavor_name=None<span class="p">, </span>force_delete=None<span class="p">, </span>image_id=None<span class="p">, </span>image_name=None<span class="p">, </span>key_pair=None<span class="p">, </span>metadata=None<span class="p">, </span>name=None<span class="p">, </span>networks=None<span class="p">, </span>personalities=None<span class="p">, </span>power_state=None<span class="p">, </span>region=None<span class="p">, </span>scheduler_hints=None<span class="p">, </span>security_groups=None<span class="p">, </span>stop_before_destroy=None<span class="p">, </span>tags=None<span class="p">, </span>user_data=None<span class="p">, </span>vendor_options=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>NewInstance<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">args</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceArgs">InstanceArgs</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#Instance">Instance</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Openstack/Pulumi.Openstack.Compute.Instance.html">Instance</a></span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Openstack/Pulumi.OpenStack.Compute.InstanceArgs.html">InstanceArgs</a></span>? <span class="nx">args = null<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language nodejs %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>args</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The arguments to use to populate this resource's properties.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

{{% choosable language python %}}
<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>
{{% /choosable %}}

{{% choosable language go %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>args</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The arguments to use to populate this resource's properties.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

{{% choosable language csharp %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>args</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The arguments to use to populate this resource's properties.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

#### Resource Arguments




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv4 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv6 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Admin<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The administrative password to assign to the server.
Changing this changes the root password on the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Availability<wbr>Zone</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The availability zone in which to create
the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>Devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceblockdevice">List&lt;Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Block<wbr>Device<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Configuration of block devices. The block_device
structure is documented below. Changing this creates a new server.
You can specify multiple block devices which will create an instance with
multiple disks. This configuration is very flexible, so please see the
following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
for more information.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Config<wbr>Drive</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to use the config_drive feature to
configure the instance. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Flavor<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The flavor ID of
the desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Flavor<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the
desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Force<wbr>Delete</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to force the OpenStack instance to be
forcefully deleted. This is useful for environments that have reclaim / soft
deletion enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_name` is empty and not booting
from a volume. Do not specify if booting from a volume.) The image ID of
the desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_id` is empty and not booting
from a volume. Do not specify if booting from a volume.) The name of the
desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Pair</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of a key pair to put on the server. The key
pair must already be created and associated with the tenant's account.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, object&gt;</span>
    </dt>
    <dd>{{% md %}}Metadata key/value pairs to make available from
within the instance. Changing this updates the existing server metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Networks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancenetwork">List&lt;Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Network<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}An array of one or more networks to attach to the
instance. The network object structure is documented below. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Personalities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancepersonality">List&lt;Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Personality<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Customize the personality of an instance by
defining one or more files and their contents. The personality structure
is described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Power<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provide the VM state. Only 'active' and 'shutoff'
are supported values. *Note*: If the initial power_state is the shutoff
the VM will be stopped immediately after build and the provisioners like
remote-exec or files are not supported.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region in which to create the server instance. If
omitted, the `region` argument of the provider is used. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scheduler<wbr>Hints</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceschedulerhint">List&lt;Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Scheduler<wbr>Hint<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Provide the Nova scheduler with hints on how
the instance should be launched. The available hints are described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Security<wbr>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}An array of one or more security group names
or ids to associate with the server. Changing this results in adding/removing
security groups from the existing server. *Note*: When attaching the
instance to networks using Ports, place the security groups on the Port
and not the instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stop<wbr>Before<wbr>Destroy</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to try stop instance gracefully
before destroying it, thus giving chance for guest OS daemons to stop correctly.
If instance doesn't stop within timeout, it will be destroyed anyway.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A set of string tags for the instance. Changing this
updates the existing instance tags.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The user data to provide when launching the instance.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vendor<wbr>Options</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancevendoroptions">Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Vendor<wbr>Options<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}Map of additional vendor-specific options.
Supported options are described below.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv4 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv6 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Admin<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The administrative password to assign to the server.
Changing this changes the root password on the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Availability<wbr>Zone</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The availability zone in which to create
the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>Devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceblockdevice">[]Instance<wbr>Block<wbr>Device</a></span>
    </dt>
    <dd>{{% md %}}Configuration of block devices. The block_device
structure is documented below. Changing this creates a new server.
You can specify multiple block devices which will create an instance with
multiple disks. This configuration is very flexible, so please see the
following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
for more information.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Config<wbr>Drive</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to use the config_drive feature to
configure the instance. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Flavor<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The flavor ID of
the desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Flavor<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the
desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Force<wbr>Delete</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to force the OpenStack instance to be
forcefully deleted. This is useful for environments that have reclaim / soft
deletion enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_name` is empty and not booting
from a volume. Do not specify if booting from a volume.) The image ID of
the desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_id` is empty and not booting
from a volume. Do not specify if booting from a volume.) The name of the
desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Pair</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of a key pair to put on the server. The key
pair must already be created and associated with the tenant's account.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]interface{}</span>
    </dt>
    <dd>{{% md %}}Metadata key/value pairs to make available from
within the instance. Changing this updates the existing server metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Networks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancenetwork">[]Instance<wbr>Network</a></span>
    </dt>
    <dd>{{% md %}}An array of one or more networks to attach to the
instance. The network object structure is documented below. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Personalities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancepersonality">[]Instance<wbr>Personality</a></span>
    </dt>
    <dd>{{% md %}}Customize the personality of an instance by
defining one or more files and their contents. The personality structure
is described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Power<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provide the VM state. Only 'active' and 'shutoff'
are supported values. *Note*: If the initial power_state is the shutoff
the VM will be stopped immediately after build and the provisioners like
remote-exec or files are not supported.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region in which to create the server instance. If
omitted, the `region` argument of the provider is used. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scheduler<wbr>Hints</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceschedulerhint">[]Instance<wbr>Scheduler<wbr>Hint</a></span>
    </dt>
    <dd>{{% md %}}Provide the Nova scheduler with hints on how
the instance should be launched. The available hints are described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Security<wbr>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}An array of one or more security group names
or ids to associate with the server. Changing this results in adding/removing
security groups from the existing server. *Note*: When attaching the
instance to networks using Ports, place the security groups on the Port
and not the instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stop<wbr>Before<wbr>Destroy</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to try stop instance gracefully
before destroying it, thus giving chance for guest OS daemons to stop correctly.
If instance doesn't stop within timeout, it will be destroyed anyway.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A set of string tags for the instance. Changing this
updates the existing instance tags.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The user data to provide when launching the instance.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vendor<wbr>Options</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancevendoroptions">Instance<wbr>Vendor<wbr>Options</a></span>
    </dt>
    <dd>{{% md %}}Map of additional vendor-specific options.
Supported options are described below.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>access<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv4 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>access<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv6 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>admin<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The administrative password to assign to the server.
Changing this changes the root password on the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>availability<wbr>Zone</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The availability zone in which to create
the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block<wbr>Devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceblockdevice">Instance<wbr>Block<wbr>Device[]</a></span>
    </dt>
    <dd>{{% md %}}Configuration of block devices. The block_device
structure is documented below. Changing this creates a new server.
You can specify multiple block devices which will create an instance with
multiple disks. This configuration is very flexible, so please see the
following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
for more information.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>config<wbr>Drive</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Whether to use the config_drive feature to
configure the instance. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>flavor<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The flavor ID of
the desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>flavor<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the
desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>force<wbr>Delete</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Whether to force the OpenStack instance to be
forcefully deleted. This is useful for environments that have reclaim / soft
deletion enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_name` is empty and not booting
from a volume. Do not specify if booting from a volume.) The image ID of
the desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_id` is empty and not booting
from a volume. Do not specify if booting from a volume.) The name of the
desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key<wbr>Pair</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of a key pair to put on the server. The key
pair must already be created and associated with the tenant's account.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: any}</span>
    </dt>
    <dd>{{% md %}}Metadata key/value pairs to make available from
within the instance. Changing this updates the existing server metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>networks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancenetwork">Instance<wbr>Network[]</a></span>
    </dt>
    <dd>{{% md %}}An array of one or more networks to attach to the
instance. The network object structure is documented below. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>personalities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancepersonality">Instance<wbr>Personality[]</a></span>
    </dt>
    <dd>{{% md %}}Customize the personality of an instance by
defining one or more files and their contents. The personality structure
is described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>power<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provide the VM state. Only 'active' and 'shutoff'
are supported values. *Note*: If the initial power_state is the shutoff
the VM will be stopped immediately after build and the provisioners like
remote-exec or files are not supported.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region in which to create the server instance. If
omitted, the `region` argument of the provider is used. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scheduler<wbr>Hints</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceschedulerhint">Instance<wbr>Scheduler<wbr>Hint[]</a></span>
    </dt>
    <dd>{{% md %}}Provide the Nova scheduler with hints on how
the instance should be launched. The available hints are described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>security<wbr>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}An array of one or more security group names
or ids to associate with the server. Changing this results in adding/removing
security groups from the existing server. *Note*: When attaching the
instance to networks using Ports, place the security groups on the Port
and not the instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stop<wbr>Before<wbr>Destroy</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Whether to try stop instance gracefully
before destroying it, thus giving chance for guest OS daemons to stop correctly.
If instance doesn't stop within timeout, it will be destroyed anyway.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A set of string tags for the instance. Changing this
updates the existing instance tags.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The user data to provide when launching the instance.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vendor<wbr>Options</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancevendoroptions">Instance<wbr>Vendor<wbr>Options</a></span>
    </dt>
    <dd>{{% md %}}Map of additional vendor-specific options.
Supported options are described below.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>access_<wbr>ip_<wbr>v4</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv4 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>access_<wbr>ip_<wbr>v6</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv6 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>admin_<wbr>pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The administrative password to assign to the server.
Changing this changes the root password on the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>availability_<wbr>zone</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The availability zone in which to create
the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block_<wbr>devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceblockdevice">List[Instance<wbr>Block<wbr>Device]</a></span>
    </dt>
    <dd>{{% md %}}Configuration of block devices. The block_device
structure is documented below. Changing this creates a new server.
You can specify multiple block devices which will create an instance with
multiple disks. This configuration is very flexible, so please see the
following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
for more information.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>config_<wbr>drive</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to use the config_drive feature to
configure the instance. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>flavor_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The flavor ID of
the desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>flavor_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of the
desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>force_<wbr>delete</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to force the OpenStack instance to be
forcefully deleted. This is useful for environments that have reclaim / soft
deletion enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_name` is empty and not booting
from a volume. Do not specify if booting from a volume.) The image ID of
the desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_id` is empty and not booting
from a volume. Do not specify if booting from a volume.) The name of the
desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key_<wbr>pair</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of a key pair to put on the server. The key
pair must already be created and associated with the tenant's account.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, Any]</span>
    </dt>
    <dd>{{% md %}}Metadata key/value pairs to make available from
within the instance. Changing this updates the existing server metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>networks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancenetwork">List[Instance<wbr>Network]</a></span>
    </dt>
    <dd>{{% md %}}An array of one or more networks to attach to the
instance. The network object structure is documented below. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>personalities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancepersonality">List[Instance<wbr>Personality]</a></span>
    </dt>
    <dd>{{% md %}}Customize the personality of an instance by
defining one or more files and their contents. The personality structure
is described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>power_<wbr>state</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Provide the VM state. Only 'active' and 'shutoff'
are supported values. *Note*: If the initial power_state is the shutoff
the VM will be stopped immediately after build and the provisioners like
remote-exec or files are not supported.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The region in which to create the server instance. If
omitted, the `region` argument of the provider is used. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scheduler_<wbr>hints</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceschedulerhint">List[Instance<wbr>Scheduler<wbr>Hint]</a></span>
    </dt>
    <dd>{{% md %}}Provide the Nova scheduler with hints on how
the instance should be launched. The available hints are described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>security_<wbr>groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}An array of one or more security group names
or ids to associate with the server. Changing this results in adding/removing
security groups from the existing server. *Note*: When attaching the
instance to networks using Ports, place the security groups on the Port
and not the instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stop_<wbr>before_<wbr>destroy</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to try stop instance gracefully
before destroying it, thus giving chance for guest OS daemons to stop correctly.
If instance doesn't stop within timeout, it will be destroyed anyway.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A set of string tags for the instance. Changing this
updates the existing instance tags.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>data</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The user data to provide when launching the instance.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vendor_<wbr>options</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancevendoroptions">Dict[Instance<wbr>Vendor<wbr>Options]</a></span>
    </dt>
    <dd>{{% md %}}Map of additional vendor-specific options.
Supported options are described below.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}







## Instance Output Properties

The following output properties are available:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>All<wbr>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, object&gt;</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>All<wbr>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}The collection of tags assigned on the instance, which have
been explicitly and implicitly added.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>All<wbr>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]interface{}</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>All<wbr>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}The collection of tags assigned on the instance, which have
been explicitly and implicitly added.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>all<wbr>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: any}</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>all<wbr>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}The collection of tags assigned on the instance, which have
been explicitly and implicitly added.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>all_<wbr>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, Any]</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>all_<wbr>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}The collection of tags assigned on the instance, which have
been explicitly and implicitly added.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## Look up an Existing Instance Resource

Get an existing Instance resource's state with the given name, ID, and optional extra properties used to qualify the lookup.

{{< chooser language "javascript,typescript,python,go,csharp  " / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">public static </span><span class="nf">get</span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">id</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#ID">Input&lt;ID&gt;</a></span><span class="p">, </span><span class="nx">state</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/openstack/compute/#InstanceState">InstanceState</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">): </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/openstack/compute/#Instance">Instance</a></span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">static </span><span class="nf">get</span><span class="p">(resource_name, id, opts=None, </span>access_ip_v4=None<span class="p">, </span>access_ip_v6=None<span class="p">, </span>admin_pass=None<span class="p">, </span>all_metadata=None<span class="p">, </span>all_tags=None<span class="p">, </span>availability_zone=None<span class="p">, </span>block_devices=None<span class="p">, </span>config_drive=None<span class="p">, </span>flavor_id=None<span class="p">, </span>flavor_name=None<span class="p">, </span>force_delete=None<span class="p">, </span>image_id=None<span class="p">, </span>image_name=None<span class="p">, </span>key_pair=None<span class="p">, </span>metadata=None<span class="p">, </span>name=None<span class="p">, </span>networks=None<span class="p">, </span>personalities=None<span class="p">, </span>power_state=None<span class="p">, </span>region=None<span class="p">, </span>scheduler_hints=None<span class="p">, </span>security_groups=None<span class="p">, </span>stop_before_destroy=None<span class="p">, </span>tags=None<span class="p">, </span>user_data=None<span class="p">, </span>vendor_options=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>GetInstance<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">id</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#IDInput">IDInput</a></span><span class="p">, </span><span class="nx">state</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceState">InstanceState</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#Instance">Instance</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Openstack/Pulumi.Openstack.Compute.Instance.html">Instance</a></span><span class="nf"> Get</span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.Input.html">Input&lt;string&gt;</a></span> <span class="nx">id<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Openstack/Pulumi.Openstack.Compute.InstanceState.html">InstanceState</a></span>? <span class="nx">state<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language nodejs %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resulting resource.</dd>
    <dt class="property-required" title="Required">
        <span>id</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The <em>unique</em> provider ID of the resource to lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>state</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>Any extra arguments used during the lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

{{% choosable language python %}}
<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>resource_name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resulting resource.</dd>
    <dt class="property-required" title="Optional">
        <span>id</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The <em>unique</em> provider ID of the resource to lookup.</dd>
</dl>
{{% /choosable %}}

{{% choosable language go %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resulting resource.</dd>
    <dt class="property-required" title="Required">
        <span>id</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The <em>unique</em> provider ID of the resource to lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>state</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>Any extra arguments used during the lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

{{% choosable language csharp %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The unique name of the resulting resource.</dd>
    <dt class="property-required" title="Required">
        <span>id</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>The <em>unique</em> provider ID of the resource to lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>state</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>Any extra arguments used during the lookup.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>

{{% /choosable %}}

The following state arguments are supported:



{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv4 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv6 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Admin<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The administrative password to assign to the server.
Changing this changes the root password on the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>All<wbr>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, object&gt;</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>All<wbr>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}The collection of tags assigned on the instance, which have
been explicitly and implicitly added.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Availability<wbr>Zone</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The availability zone in which to create
the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>Devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceblockdevice">List&lt;Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Block<wbr>Device<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Configuration of block devices. The block_device
structure is documented below. Changing this creates a new server.
You can specify multiple block devices which will create an instance with
multiple disks. This configuration is very flexible, so please see the
following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
for more information.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Config<wbr>Drive</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to use the config_drive feature to
configure the instance. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Flavor<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The flavor ID of
the desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Flavor<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the
desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Force<wbr>Delete</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to force the OpenStack instance to be
forcefully deleted. This is useful for environments that have reclaim / soft
deletion enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_name` is empty and not booting
from a volume. Do not specify if booting from a volume.) The image ID of
the desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_id` is empty and not booting
from a volume. Do not specify if booting from a volume.) The name of the
desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Pair</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of a key pair to put on the server. The key
pair must already be created and associated with the tenant's account.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, object&gt;</span>
    </dt>
    <dd>{{% md %}}Metadata key/value pairs to make available from
within the instance. Changing this updates the existing server metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Networks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancenetwork">List&lt;Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Network<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}An array of one or more networks to attach to the
instance. The network object structure is documented below. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Personalities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancepersonality">List&lt;Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Personality<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Customize the personality of an instance by
defining one or more files and their contents. The personality structure
is described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Power<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provide the VM state. Only 'active' and 'shutoff'
are supported values. *Note*: If the initial power_state is the shutoff
the VM will be stopped immediately after build and the provisioners like
remote-exec or files are not supported.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region in which to create the server instance. If
omitted, the `region` argument of the provider is used. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scheduler<wbr>Hints</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceschedulerhint">List&lt;Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Scheduler<wbr>Hint<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}Provide the Nova scheduler with hints on how
the instance should be launched. The available hints are described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Security<wbr>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}An array of one or more security group names
or ids to associate with the server. Changing this results in adding/removing
security groups from the existing server. *Note*: When attaching the
instance to networks using Ports, place the security groups on the Port
and not the instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stop<wbr>Before<wbr>Destroy</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to try stop instance gracefully
before destroying it, thus giving chance for guest OS daemons to stop correctly.
If instance doesn't stop within timeout, it will be destroyed anyway.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A set of string tags for the instance. Changing this
updates the existing instance tags.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The user data to provide when launching the instance.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vendor<wbr>Options</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancevendoroptions">Pulumi.<wbr>Open<wbr>Stack.<wbr>Compute.<wbr>Inputs.<wbr>Instance<wbr>Vendor<wbr>Options<wbr>Args</a></span>
    </dt>
    <dd>{{% md %}}Map of additional vendor-specific options.
Supported options are described below.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv4 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv6 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Admin<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The administrative password to assign to the server.
Changing this changes the root password on the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>All<wbr>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]interface{}</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>All<wbr>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}The collection of tags assigned on the instance, which have
been explicitly and implicitly added.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Availability<wbr>Zone</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The availability zone in which to create
the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>Devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceblockdevice">[]Instance<wbr>Block<wbr>Device</a></span>
    </dt>
    <dd>{{% md %}}Configuration of block devices. The block_device
structure is documented below. Changing this creates a new server.
You can specify multiple block devices which will create an instance with
multiple disks. This configuration is very flexible, so please see the
following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
for more information.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Config<wbr>Drive</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to use the config_drive feature to
configure the instance. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Flavor<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The flavor ID of
the desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Flavor<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the
desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Force<wbr>Delete</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to force the OpenStack instance to be
forcefully deleted. This is useful for environments that have reclaim / soft
deletion enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_name` is empty and not booting
from a volume. Do not specify if booting from a volume.) The image ID of
the desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_id` is empty and not booting
from a volume. Do not specify if booting from a volume.) The name of the
desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key<wbr>Pair</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of a key pair to put on the server. The key
pair must already be created and associated with the tenant's account.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]interface{}</span>
    </dt>
    <dd>{{% md %}}Metadata key/value pairs to make available from
within the instance. Changing this updates the existing server metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Networks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancenetwork">[]Instance<wbr>Network</a></span>
    </dt>
    <dd>{{% md %}}An array of one or more networks to attach to the
instance. The network object structure is documented below. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Personalities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancepersonality">[]Instance<wbr>Personality</a></span>
    </dt>
    <dd>{{% md %}}Customize the personality of an instance by
defining one or more files and their contents. The personality structure
is described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Power<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provide the VM state. Only 'active' and 'shutoff'
are supported values. *Note*: If the initial power_state is the shutoff
the VM will be stopped immediately after build and the provisioners like
remote-exec or files are not supported.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region in which to create the server instance. If
omitted, the `region` argument of the provider is used. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Scheduler<wbr>Hints</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceschedulerhint">[]Instance<wbr>Scheduler<wbr>Hint</a></span>
    </dt>
    <dd>{{% md %}}Provide the Nova scheduler with hints on how
the instance should be launched. The available hints are described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Security<wbr>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}An array of one or more security group names
or ids to associate with the server. Changing this results in adding/removing
security groups from the existing server. *Note*: When attaching the
instance to networks using Ports, place the security groups on the Port
and not the instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Stop<wbr>Before<wbr>Destroy</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to try stop instance gracefully
before destroying it, thus giving chance for guest OS daemons to stop correctly.
If instance doesn't stop within timeout, it will be destroyed anyway.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A set of string tags for the instance. Changing this
updates the existing instance tags.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>User<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The user data to provide when launching the instance.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vendor<wbr>Options</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancevendoroptions">Instance<wbr>Vendor<wbr>Options</a></span>
    </dt>
    <dd>{{% md %}}Map of additional vendor-specific options.
Supported options are described below.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>access<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv4 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>access<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv6 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>admin<wbr>Pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The administrative password to assign to the server.
Changing this changes the root password on the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>all<wbr>Metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: any}</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>all<wbr>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}The collection of tags assigned on the instance, which have
been explicitly and implicitly added.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>availability<wbr>Zone</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The availability zone in which to create
the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block<wbr>Devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceblockdevice">Instance<wbr>Block<wbr>Device[]</a></span>
    </dt>
    <dd>{{% md %}}Configuration of block devices. The block_device
structure is documented below. Changing this creates a new server.
You can specify multiple block devices which will create an instance with
multiple disks. This configuration is very flexible, so please see the
following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
for more information.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>config<wbr>Drive</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Whether to use the config_drive feature to
configure the instance. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>flavor<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The flavor ID of
the desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>flavor<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the
desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>force<wbr>Delete</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Whether to force the OpenStack instance to be
forcefully deleted. This is useful for environments that have reclaim / soft
deletion enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_name` is empty and not booting
from a volume. Do not specify if booting from a volume.) The image ID of
the desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image<wbr>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_id` is empty and not booting
from a volume. Do not specify if booting from a volume.) The name of the
desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key<wbr>Pair</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of a key pair to put on the server. The key
pair must already be created and associated with the tenant's account.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: any}</span>
    </dt>
    <dd>{{% md %}}Metadata key/value pairs to make available from
within the instance. Changing this updates the existing server metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>networks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancenetwork">Instance<wbr>Network[]</a></span>
    </dt>
    <dd>{{% md %}}An array of one or more networks to attach to the
instance. The network object structure is documented below. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>personalities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancepersonality">Instance<wbr>Personality[]</a></span>
    </dt>
    <dd>{{% md %}}Customize the personality of an instance by
defining one or more files and their contents. The personality structure
is described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>power<wbr>State</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Provide the VM state. Only 'active' and 'shutoff'
are supported values. *Note*: If the initial power_state is the shutoff
the VM will be stopped immediately after build and the provisioners like
remote-exec or files are not supported.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The region in which to create the server instance. If
omitted, the `region` argument of the provider is used. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scheduler<wbr>Hints</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceschedulerhint">Instance<wbr>Scheduler<wbr>Hint[]</a></span>
    </dt>
    <dd>{{% md %}}Provide the Nova scheduler with hints on how
the instance should be launched. The available hints are described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>security<wbr>Groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}An array of one or more security group names
or ids to associate with the server. Changing this results in adding/removing
security groups from the existing server. *Note*: When attaching the
instance to networks using Ports, place the security groups on the Port
and not the instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stop<wbr>Before<wbr>Destroy</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Whether to try stop instance gracefully
before destroying it, thus giving chance for guest OS daemons to stop correctly.
If instance doesn't stop within timeout, it will be destroyed anyway.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A set of string tags for the instance. Changing this
updates the existing instance tags.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user<wbr>Data</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The user data to provide when launching the instance.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vendor<wbr>Options</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancevendoroptions">Instance<wbr>Vendor<wbr>Options</a></span>
    </dt>
    <dd>{{% md %}}Map of additional vendor-specific options.
Supported options are described below.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>access_<wbr>ip_<wbr>v4</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv4 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>access_<wbr>ip_<wbr>v6</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The first detected Fixed IPv6 address.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>admin_<wbr>pass</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The administrative password to assign to the server.
Changing this changes the root password on the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>all_<wbr>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, Any]</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>all_<wbr>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}The collection of tags assigned on the instance, which have
been explicitly and implicitly added.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>availability_<wbr>zone</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The availability zone in which to create
the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block_<wbr>devices</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceblockdevice">List[Instance<wbr>Block<wbr>Device]</a></span>
    </dt>
    <dd>{{% md %}}Configuration of block devices. The block_device
structure is documented below. Changing this creates a new server.
You can specify multiple block devices which will create an instance with
multiple disks. This configuration is very flexible, so please see the
following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
for more information.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>config_<wbr>drive</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to use the config_drive feature to
configure the instance. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>flavor_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The flavor ID of
the desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>flavor_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of the
desired flavor for the server. Changing this resizes the existing server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>force_<wbr>delete</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to force the OpenStack instance to be
forcefully deleted. This is useful for environments that have reclaim / soft
deletion enabled.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_name` is empty and not booting
from a volume. Do not specify if booting from a volume.) The image ID of
the desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>image_<wbr>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}(Optional; Required if `image_id` is empty and not booting
from a volume. Do not specify if booting from a volume.) The name of the
desired image for the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key_<wbr>pair</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of a key pair to put on the server. The key
pair must already be created and associated with the tenant's account.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>metadata</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, Any]</span>
    </dt>
    <dd>{{% md %}}Metadata key/value pairs to make available from
within the instance. Changing this updates the existing server metadata.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>networks</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancenetwork">List[Instance<wbr>Network]</a></span>
    </dt>
    <dd>{{% md %}}An array of one or more networks to attach to the
instance. The network object structure is documented below. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>personalities</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancepersonality">List[Instance<wbr>Personality]</a></span>
    </dt>
    <dd>{{% md %}}Customize the personality of an instance by
defining one or more files and their contents. The personality structure
is described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>power_<wbr>state</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Provide the VM state. Only 'active' and 'shutoff'
are supported values. *Note*: If the initial power_state is the shutoff
the VM will be stopped immediately after build and the provisioners like
remote-exec or files are not supported.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>region</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The region in which to create the server instance. If
omitted, the `region` argument of the provider is used. Changing this
creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>scheduler_<wbr>hints</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instanceschedulerhint">List[Instance<wbr>Scheduler<wbr>Hint]</a></span>
    </dt>
    <dd>{{% md %}}Provide the Nova scheduler with hints on how
the instance should be launched. The available hints are described below.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>security_<wbr>groups</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}An array of one or more security group names
or ids to associate with the server. Changing this results in adding/removing
security groups from the existing server. *Note*: When attaching the
instance to networks using Ports, place the security groups on the Port
and not the instance.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>stop_<wbr>before_<wbr>destroy</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether to try stop instance gracefully
before destroying it, thus giving chance for guest OS daemons to stop correctly.
If instance doesn't stop within timeout, it will be destroyed anyway.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A set of string tags for the instance. Changing this
updates the existing instance tags.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>user_<wbr>data</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The user data to provide when launching the instance.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vendor_<wbr>options</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#instancevendoroptions">Dict[Instance<wbr>Vendor<wbr>Options]</a></span>
    </dt>
    <dd>{{% md %}}Map of additional vendor-specific options.
Supported options are described below.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}










## Supporting Types

<h4>Instance<wbr>Block<wbr>Device</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/input/#InstanceBlockDevice">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/output/#InstanceBlockDevice">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceBlockDeviceArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceBlockDeviceOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Source<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The source type of the device. Must be one of
"blank", "image", "volume", or "snapshot". Changing this creates a new
server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Boot<wbr>Index</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The boot index of the volume. It defaults to 0.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Delete<wbr>On<wbr>Termination</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Delete the volume / block device upon
termination of the instance. Defaults to false. Changing this creates a
new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Destination<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type that gets created. Possible values
are "volume" and "local". Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Device<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The low-level device type that will be used. Most
common thing is to leave this empty. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Bus</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The low-level disk bus that will be used. Most common
thing is to leave this empty. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Guest<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The UUID of
the image, volume, or snapshot. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The size of the volume to create (in gigabytes). Required
in the following combinations: source=image and destination=volume,
source=blank and destination=local, and source=blank and destination=volume.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The volume type that will be used, for example SSD
or HDD storage. The available options depend on how your specific OpenStack
cloud is configured and what classes of storage are provided. Changing this
creates a new server.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Source<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The source type of the device. Must be one of
"blank", "image", "volume", or "snapshot". Changing this creates a new
server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Boot<wbr>Index</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The boot index of the volume. It defaults to 0.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Delete<wbr>On<wbr>Termination</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Delete the volume / block device upon
termination of the instance. Defaults to false. Changing this creates a
new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Destination<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type that gets created. Possible values
are "volume" and "local". Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Device<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The low-level device type that will be used. Most
common thing is to leave this empty. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Disk<wbr>Bus</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The low-level disk bus that will be used. Most common
thing is to leave this empty. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Guest<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The UUID of
the image, volume, or snapshot. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The size of the volume to create (in gigabytes). Required
in the following combinations: source=image and destination=volume,
source=blank and destination=local, and source=blank and destination=volume.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Volume<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The volume type that will be used, for example SSD
or HDD storage. The available options depend on how your specific OpenStack
cloud is configured and what classes of storage are provided. Changing this
creates a new server.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>source<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The source type of the device. Must be one of
"blank", "image", "volume", or "snapshot". Changing this creates a new
server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>boot<wbr>Index</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The boot index of the volume. It defaults to 0.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>delete<wbr>On<wbr>Termination</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Delete the volume / block device upon
termination of the instance. Defaults to false. Changing this creates a
new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>destination<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The type that gets created. Possible values
are "volume" and "local". Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>device<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The low-level device type that will be used. Most
common thing is to leave this empty. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Bus</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The low-level disk bus that will be used. Most common
thing is to leave this empty. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>guest<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The UUID of
the image, volume, or snapshot. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The size of the volume to create (in gigabytes). Required
in the following combinations: source=image and destination=volume,
source=blank and destination=local, and source=blank and destination=volume.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The volume type that will be used, for example SSD
or HDD storage. The available options depend on how your specific OpenStack
cloud is configured and what classes of storage are provided. Changing this
creates a new server.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>source<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The source type of the device. Must be one of
"blank", "image", "volume", or "snapshot". Changing this creates a new
server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>boot<wbr>Index</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The boot index of the volume. It defaults to 0.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>delete<wbr>On<wbr>Termination</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Delete the volume / block device upon
termination of the instance. Defaults to false. Changing this creates a
new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>destination<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The type that gets created. Possible values
are "volume" and "local". Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>device<wbr>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The low-level device type that will be used. Most
common thing is to leave this empty. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>disk<wbr>Bus</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The low-level disk bus that will be used. Most common
thing is to leave this empty. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>guest<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The UUID of
the image, volume, or snapshot. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The size of the volume to create (in gigabytes). Required
in the following combinations: source=image and destination=volume,
source=blank and destination=local, and source=blank and destination=volume.
Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>volume_<wbr>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The volume type that will be used, for example SSD
or HDD storage. The available options depend on how your specific OpenStack
cloud is configured and what classes of storage are provided. Changing this
creates a new server.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Network</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/input/#InstanceNetwork">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/output/#InstanceNetwork">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceNetworkArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceNetworkOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Specifies if this network should be used for
provisioning access. Accepts true or false. Defaults to false.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Fixed<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies a fixed IPv4 address to be used on this
network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Fixed<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Mac</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The port UUID of a
network to attach to the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The UUID of
the image, volume, or snapshot. Changing this creates a new server.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Access<wbr>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Specifies if this network should be used for
provisioning access. Accepts true or false. Defaults to false.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Fixed<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies a fixed IPv4 address to be used on this
network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Fixed<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Mac</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The port UUID of a
network to attach to the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The UUID of
the image, volume, or snapshot. Changing this creates a new server.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>access<wbr>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Specifies if this network should be used for
provisioning access. Accepts true or false. Defaults to false.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>fixed<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies a fixed IPv4 address to be used on this
network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>fixed<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>mac</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The port UUID of a
network to attach to the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The UUID of
the image, volume, or snapshot. Changing this creates a new server.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>access<wbr>Network</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Specifies if this network should be used for
provisioning access. Accepts true or false. Defaults to false.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>fixed<wbr>Ip<wbr>V4</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Specifies a fixed IPv4 address to be used on this
network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>fixed<wbr>Ip<wbr>V6</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>mac</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The human-readable
name of the network. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The port UUID of a
network to attach to the server. Changing this creates a new server.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The UUID of
the image, volume, or snapshot. Changing this creates a new server.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Personality</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/input/#InstancePersonality">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/output/#InstancePersonality">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstancePersonalityArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstancePersonalityOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Content</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The contents of the file. Limited to 255 bytes.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>File</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The absolute path of the destination file.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Content</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The contents of the file. Limited to 255 bytes.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>File</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The absolute path of the destination file.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>content</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The contents of the file. Limited to 255 bytes.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>file</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The absolute path of the destination file.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>content</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The contents of the file. Limited to 255 bytes.
{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>file</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The absolute path of the destination file.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Scheduler<wbr>Hint</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/input/#InstanceSchedulerHint">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/output/#InstanceSchedulerHint">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceSchedulerHintArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceSchedulerHintOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Additional<wbr>Properties</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, object&gt;</span>
    </dt>
    <dd>{{% md %}}Arbitrary key/value pairs of additional
properties to pass to the scheduler.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Build<wbr>Near<wbr>Host<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An IP Address in CIDR form. The instance
will be placed on a compute node that is in the same subnet.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Different<wbr>Hosts</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of instance UUIDs. The instance will
be scheduled on a different host than all other instances.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Group</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}A UUID of a Server Group. The instance will be placed
into that group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Queries</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A conditional query that a compute node must pass in
order to host an instance. The query must use the `JsonFilter` syntax
which is described
[here](https://docs.openstack.org/nova/latest/admin/configuration/schedulers.html#jsonfilter).
At this time, only simple queries are supported. Compound queries using
`and`, `or`, or `not` are not supported. An example of a simple query is:
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Same<wbr>Hosts</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of instance UUIDs. The instance will be
scheduled on the same host of those specified.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Target<wbr>Cell</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of a cell to host the instance.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Additional<wbr>Properties</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]interface{}</span>
    </dt>
    <dd>{{% md %}}Arbitrary key/value pairs of additional
properties to pass to the scheduler.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Build<wbr>Near<wbr>Host<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An IP Address in CIDR form. The instance
will be placed on a compute node that is in the same subnet.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Different<wbr>Hosts</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of instance UUIDs. The instance will
be scheduled on a different host than all other instances.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Group</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}A UUID of a Server Group. The instance will be placed
into that group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Queries</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A conditional query that a compute node must pass in
order to host an instance. The query must use the `JsonFilter` syntax
which is described
[here](https://docs.openstack.org/nova/latest/admin/configuration/schedulers.html#jsonfilter).
At this time, only simple queries are supported. Compound queries using
`and`, `or`, or `not` are not supported. An example of a simple query is:
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Same<wbr>Hosts</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of instance UUIDs. The instance will be
scheduled on the same host of those specified.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Target<wbr>Cell</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of a cell to host the instance.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>additional<wbr>Properties</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: any}</span>
    </dt>
    <dd>{{% md %}}Arbitrary key/value pairs of additional
properties to pass to the scheduler.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>build<wbr>Near<wbr>Host<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An IP Address in CIDR form. The instance
will be placed on a compute node that is in the same subnet.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>different<wbr>Hosts</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of instance UUIDs. The instance will
be scheduled on a different host than all other instances.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>group</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}A UUID of a Server Group. The instance will be placed
into that group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>queries</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A conditional query that a compute node must pass in
order to host an instance. The query must use the `JsonFilter` syntax
which is described
[here](https://docs.openstack.org/nova/latest/admin/configuration/schedulers.html#jsonfilter).
At this time, only simple queries are supported. Compound queries using
`and`, `or`, or `not` are not supported. An example of a simple query is:
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>same<wbr>Hosts</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of instance UUIDs. The instance will be
scheduled on the same host of those specified.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>target<wbr>Cell</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of a cell to host the instance.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>additional<wbr>Properties</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, Any]</span>
    </dt>
    <dd>{{% md %}}Arbitrary key/value pairs of additional
properties to pass to the scheduler.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>build<wbr>Near<wbr>Host<wbr>Ip</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}An IP Address in CIDR form. The instance
will be placed on a compute node that is in the same subnet.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>different<wbr>Hosts</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of instance UUIDs. The instance will
be scheduled on a different host than all other instances.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>group</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}A UUID of a Server Group. The instance will be placed
into that group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>queries</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A conditional query that a compute node must pass in
order to host an instance. The query must use the `JsonFilter` syntax
which is described
[here](https://docs.openstack.org/nova/latest/admin/configuration/schedulers.html#jsonfilter).
At this time, only simple queries are supported. Compound queries using
`and`, `or`, or `not` are not supported. An example of a simple query is:
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>same<wbr>Hosts</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of instance UUIDs. The instance will be
scheduled on the same host of those specified.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>target<wbr>Cell</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of a cell to host the instance.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}





<h4>Instance<wbr>Vendor<wbr>Options</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/input/#InstanceVendorOptions">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/openstack/types/output/#InstanceVendorOptions">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceVendorOptionsArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-openstack/sdk/go/openstack/compute?tab=doc#InstanceVendorOptionsOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Ignore<wbr>Resize<wbr>Confirmation</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Boolean to control whether
to ignore manual confirmation of the instance resizing. This can be helpful
to work with some OpenStack clouds which automatically confirm resizing of
instances after some timeout.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Ignore<wbr>Resize<wbr>Confirmation</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Boolean to control whether
to ignore manual confirmation of the instance resizing. This can be helpful
to work with some OpenStack clouds which automatically confirm resizing of
instances after some timeout.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>ignore<wbr>Resize<wbr>Confirmation</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Boolean to control whether
to ignore manual confirmation of the instance resizing. This can be helpful
to work with some OpenStack clouds which automatically confirm resizing of
instances after some timeout.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>ignore<wbr>Resize<wbr>Confirmation</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Boolean to control whether
to ignore manual confirmation of the instance resizing. This can be helpful
to work with some OpenStack clouds which automatically confirm resizing of
instances after some timeout.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}









<h3>Package Details</h3>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-openstack">https://github.com/pulumi/pulumi-openstack</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
    
</dl>
