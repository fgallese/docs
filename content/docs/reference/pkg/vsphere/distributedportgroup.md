
---
title: "DistributedPortGroup"
block_external_search_index: true
---



The `vsphere..DistributedPortGroup` resource can be used to manage vSphere
distributed virtual port groups. These port groups are connected to distributed
virtual switches, which can be managed by the
[`vsphere..DistributedVirtualSwitch`][distributed-virtual-switch] resource.

Distributed port groups can be used as networks for virtual machines, allowing
VMs to use the networking supplied by a distributed virtual switch (DVS), with
a set of policies that apply to that individual newtork, if desired.

For an overview on vSphere networking concepts, see [this
page][ref-vsphere-net-concepts]. For more information on vSphere DVS
portgroups, see [this page][ref-vsphere-dvportgroup].

[distributed-virtual-switch]: /docs/providers/vsphere/r/distributed_virtual_switch.html
[ref-vsphere-net-concepts]: https://docs.vmware.com/en/VMware-vSphere/6.5/com.vmware.vsphere.networking.doc/GUID-2B11DBB8-CB3C-4AFF-8885-EFEA0FC562F4.html
[ref-vsphere-dvportgroup]: https://docs.vmware.com/en/VMware-vSphere/6.5/com.vmware.vsphere.networking.doc/GUID-69933F6E-2442-46CF-AA17-1196CB9A0A09.html

> **NOTE:** This resource requires vCenter and is not available on direct ESXi
connections.

## Example Usage

The configuration below builds on the example given in the
[`vsphere..DistributedVirtualSwitch`][distributed-virtual-switch] resource by
adding the `vsphere..DistributedPortGroup` resource, attaching itself to the
DVS created here and assigning VLAN ID 1000.

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as vsphere from "@pulumi/vsphere";

const config = new pulumi.Config();
const esxiHosts = config.get("esxiHosts") || [
    "esxi1",
    "esxi2",
    "esxi3",
];
const networkInterfaces = config.get("networkInterfaces") || [
    "vmnic0",
    "vmnic1",
    "vmnic2",
    "vmnic3",
];

const dc = pulumi.output(vsphere.getDatacenter({
    name: "dc1",
}, { async: true }));
const host: pulumi.Output<vsphere.GetHostResult>[] = [];
for (let i = 0; i < esxiHosts.length; i++) {
    host.push(dc.apply(dc => vsphere.getHost({
        datacenterId: dc.id,
        name: esxiHosts[i],
    }, { async: true })));
}
const dvs = new vsphere.DistributedVirtualSwitch("dvs", {
    activeUplinks: [
        "uplink1",
        "uplink2",
    ],
    datacenterId: dc.id,
    hosts: [
        {
            devices: networkInterfaces,
            hostSystemId: host[0].id,
        },
        {
            devices: networkInterfaces,
            hostSystemId: host[1].id,
        },
        {
            devices: networkInterfaces,
            hostSystemId: host[2].id,
        },
    ],
    standbyUplinks: [
        "uplink3",
        "uplink4",
    ],
    uplinks: [
        "uplink1",
        "uplink2",
        "uplink3",
        "uplink4",
    ],
});
const pg = new vsphere.DistributedPortGroup("pg", {
    distributedVirtualSwitchUuid: dvs.id,
    vlanId: 1000,
});
```

### Overriding DVS policies

All of the [default port policies][dvs-default-port-policies] available in the
`vsphere..DistributedVirtualSwitch` resource can be overridden on the port
group level by specifying new settings for them.

[dvs-default-port-policies]: /docs/providers/vsphere/r/distributed_virtual_switch.html#default-port-group-policy-arguments

As an example, we also take this example from the
`vsphere..DistributedVirtualSwitch` resource where we manually specify our
uplink count and uplink order. While the DVS has a default policy of using the
first uplink as an active uplink and the second one as a standby, the
overridden port group policy means that both uplinks will be used as active
uplinks in this specific port group.

```typescript
import * as pulumi from "@pulumi/pulumi";
import * as vsphere from "@pulumi/vsphere";

const dvs = new vsphere.DistributedVirtualSwitch("dvs", {
    activeUplinks: ["tfup1"],
    datacenterId: vsphere_datacenter_dc.id,
    standbyUplinks: ["tfup2"],
    uplinks: [
        "tfup1",
        "tfup2",
    ],
});
const pg = new vsphere.DistributedPortGroup("pg", {
    activeUplinks: [
        "tfup1",
        "tfup2",
    ],
    distributedVirtualSwitchUuid: dvs.id,
    standbyUplinks: [],
    vlanId: 1000,
});
```

> This content is derived from https://github.com/terraform-providers/terraform-provider-vsphere/blob/master/website/docs/r/distributed_port_group.html.markdown.



## Create a DistributedPortGroup Resource

{{< chooser language "javascript,typescript,python,go,csharp" / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/vsphere/#DistributedPortGroup">DistributedPortGroup</a></span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">args</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/vsphere/#DistributedPortGroupArgs">DistributedPortGroupArgs</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nf">DistributedPortGroup</span><span class="p">(resource_name, opts=None, </span>active_uplinks=None<span class="p">, </span>allow_forged_transmits=None<span class="p">, </span>allow_mac_changes=None<span class="p">, </span>allow_promiscuous=None<span class="p">, </span>auto_expand=None<span class="p">, </span>block_all_ports=None<span class="p">, </span>block_override_allowed=None<span class="p">, </span>check_beacon=None<span class="p">, </span>custom_attributes=None<span class="p">, </span>description=None<span class="p">, </span>directpath_gen2_allowed=None<span class="p">, </span>distributed_virtual_switch_uuid=None<span class="p">, </span>egress_shaping_average_bandwidth=None<span class="p">, </span>egress_shaping_burst_size=None<span class="p">, </span>egress_shaping_enabled=None<span class="p">, </span>egress_shaping_peak_bandwidth=None<span class="p">, </span>failback=None<span class="p">, </span>ingress_shaping_average_bandwidth=None<span class="p">, </span>ingress_shaping_burst_size=None<span class="p">, </span>ingress_shaping_enabled=None<span class="p">, </span>ingress_shaping_peak_bandwidth=None<span class="p">, </span>lacp_enabled=None<span class="p">, </span>lacp_mode=None<span class="p">, </span>live_port_moving_allowed=None<span class="p">, </span>name=None<span class="p">, </span>netflow_enabled=None<span class="p">, </span>netflow_override_allowed=None<span class="p">, </span>network_resource_pool_key=None<span class="p">, </span>network_resource_pool_override_allowed=None<span class="p">, </span>notify_switches=None<span class="p">, </span>number_of_ports=None<span class="p">, </span>port_config_reset_at_disconnect=None<span class="p">, </span>port_name_format=None<span class="p">, </span>port_private_secondary_vlan_id=None<span class="p">, </span>security_policy_override_allowed=None<span class="p">, </span>shaping_override_allowed=None<span class="p">, </span>standby_uplinks=None<span class="p">, </span>tags=None<span class="p">, </span>teaming_policy=None<span class="p">, </span>traffic_filter_override_allowed=None<span class="p">, </span>tx_uplink=None<span class="p">, </span>type=None<span class="p">, </span>uplink_teaming_override_allowed=None<span class="p">, </span>vlan_id=None<span class="p">, </span>vlan_override_allowed=None<span class="p">, </span>vlan_ranges=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>NewDistributedPortGroup<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">args</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vsphere/sdk/go/vsphere/?tab=doc#DistributedPortGroupArgs">DistributedPortGroupArgs</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vsphere/sdk/go/vsphere/?tab=doc#DistributedPortGroup">DistributedPortGroup</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Vsphere/Pulumi.Vsphere.DistributedPortGroup.html">DistributedPortGroup</a></span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Vsphere/Pulumi.VSphere.DistributedPortGroupArgs.html">DistributedPortGroupArgs</a></span> <span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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

    <dt class="property-required"
            title="Required">
        <span>Distributed<wbr>Virtual<wbr>Switch<wbr>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The ID of the DVS to add the
port group to. Forces a new resource if changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Active<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Forged<wbr>Transmits</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the virtual network adapter is allowed to send network traffic with a different MAC address than
that of its own.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Mac<wbr>Changes</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the Media Access Control (MAC) address can be changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Promiscuous</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable promiscuous mode on the network. This flag indicates whether or not all traffic is seen on a given port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Expand</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allows the port group to create additional ports
past the limit specified in `number_of_ports` if necessary. Default: `true`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>All<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to block all ports by default.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [port shutdown
policy][port-shutdown-policy] to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Check<wbr>Beacon</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable beacon probing on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Custom<wbr>Attributes</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, string&gt;</span>
    </dt>
    <dd>{{% md %}}Map of custom attribute ids to attribute
value string to set for port group. See [here][docs-setting-custom-attributes]
for a reference on how to set values for custom attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional description for the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Directpath<wbr>Gen2Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow VMDirectPath Gen2 on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The average egress bandwidth in bits per second if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum egress burst size allowed in bytes if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for egress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The peak egress bandwidth during bursts in bits per second if egress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Failback</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will re-activate failed interfaces higher in precedence when they come back up.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The average ingress bandwidth in bits per second if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum ingress burst size allowed in bytes if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for ingress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The peak ingress bandwidth during bursts in bits per second if ingress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Lacp<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether or not to enable LACP on all uplink ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Lacp<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The uplink LACP mode to use. Can be one of active or passive.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Live<wbr>Port<wbr>Moving<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow a port in this port group to be
moved to another port group while it is connected.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Netflow<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to enable netflow on all ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Netflow<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [Netflow
policy][netflow-policy] on this port group to be overridden on an individual
port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Resource<wbr>Pool<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The key of a network resource pool
to associate with this port group. The default is `-1`, which implies no
association.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Resource<wbr>Pool<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the network
resource pool set on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notify<wbr>Switches</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will notify the broadcast network of a NIC failover, triggering cache updates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Number<wbr>Of<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The number of ports available on this port
group. Cannot be decreased below the amount of used ports on the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Config<wbr>Reset<wbr>At<wbr>Disconnect</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Reset a port's settings to the
settings defined on this port group policy when the port disconnects.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Name<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional formatting policy for naming of
the ports in this port group. See the `portNameFormat` attribute listed
[here][ext-vsphere-portname-format] for details on the format syntax.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Private<wbr>Secondary<wbr>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The secondary VLAN ID for this port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Security<wbr>Policy<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [security policy
settings][sec-policy-settings] defined in this port group policy to be
overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Shaping<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [traffic shaping
options][traffic-shaping-settings] on this port group policy to be overridden
on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Standby<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of tag IDs to apply to this object.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Teaming<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The network adapter teaming policy. Can be one of loadbalance_ip, loadbalance_srcmac, loadbalance_srcid,
failover_explicit, or loadbalance_loadbased.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Traffic<wbr>Filter<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow any traffic filters on
this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tx<wbr>Uplink</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, a copy of packets sent to the switch will always be forwarded to an uplink in addition to the regular packet
forwarded done by the switch.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The port group type. Can be one of `earlyBinding` (static
binding) or `ephemeral`. Default: `earlyBinding`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Uplink<wbr>Teaming<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [uplink teaming
options][uplink-teaming-settings] on this port group to be overridden on an
individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [VLAN settings][vlan-settings]
on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Ranges</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#distributedportgroupvlanrange">List&lt;Pulumi.<wbr>VSphere.<wbr>Inputs.<wbr>Distributed<wbr>Port<wbr>Group<wbr>Vlan<wbr>Range<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Distributed<wbr>Virtual<wbr>Switch<wbr>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The ID of the DVS to add the
port group to. Forces a new resource if changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Active<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Forged<wbr>Transmits</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the virtual network adapter is allowed to send network traffic with a different MAC address than
that of its own.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Mac<wbr>Changes</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the Media Access Control (MAC) address can be changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Promiscuous</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable promiscuous mode on the network. This flag indicates whether or not all traffic is seen on a given port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Expand</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allows the port group to create additional ports
past the limit specified in `number_of_ports` if necessary. Default: `true`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>All<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to block all ports by default.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [port shutdown
policy][port-shutdown-policy] to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Check<wbr>Beacon</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable beacon probing on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Custom<wbr>Attributes</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]string</span>
    </dt>
    <dd>{{% md %}}Map of custom attribute ids to attribute
value string to set for port group. See [here][docs-setting-custom-attributes]
for a reference on how to set values for custom attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional description for the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Directpath<wbr>Gen2Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow VMDirectPath Gen2 on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The average egress bandwidth in bits per second if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum egress burst size allowed in bytes if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for egress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The peak egress bandwidth during bursts in bits per second if egress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Failback</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will re-activate failed interfaces higher in precedence when they come back up.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The average ingress bandwidth in bits per second if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum ingress burst size allowed in bytes if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for ingress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The peak ingress bandwidth during bursts in bits per second if ingress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Lacp<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether or not to enable LACP on all uplink ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Lacp<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The uplink LACP mode to use. Can be one of active or passive.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Live<wbr>Port<wbr>Moving<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow a port in this port group to be
moved to another port group while it is connected.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Netflow<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to enable netflow on all ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Netflow<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [Netflow
policy][netflow-policy] on this port group to be overridden on an individual
port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Resource<wbr>Pool<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The key of a network resource pool
to associate with this port group. The default is `-1`, which implies no
association.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Resource<wbr>Pool<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the network
resource pool set on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notify<wbr>Switches</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will notify the broadcast network of a NIC failover, triggering cache updates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Number<wbr>Of<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The number of ports available on this port
group. Cannot be decreased below the amount of used ports on the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Config<wbr>Reset<wbr>At<wbr>Disconnect</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Reset a port's settings to the
settings defined on this port group policy when the port disconnects.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Name<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional formatting policy for naming of
the ports in this port group. See the `portNameFormat` attribute listed
[here][ext-vsphere-portname-format] for details on the format syntax.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Private<wbr>Secondary<wbr>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The secondary VLAN ID for this port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Security<wbr>Policy<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [security policy
settings][sec-policy-settings] defined in this port group policy to be
overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Shaping<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [traffic shaping
options][traffic-shaping-settings] on this port group policy to be overridden
on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Standby<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of tag IDs to apply to this object.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Teaming<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The network adapter teaming policy. Can be one of loadbalance_ip, loadbalance_srcmac, loadbalance_srcid,
failover_explicit, or loadbalance_loadbased.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Traffic<wbr>Filter<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow any traffic filters on
this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tx<wbr>Uplink</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, a copy of packets sent to the switch will always be forwarded to an uplink in addition to the regular packet
forwarded done by the switch.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The port group type. Can be one of `earlyBinding` (static
binding) or `ephemeral`. Default: `earlyBinding`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Uplink<wbr>Teaming<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [uplink teaming
options][uplink-teaming-settings] on this port group to be overridden on an
individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [VLAN settings][vlan-settings]
on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Ranges</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#distributedportgroupvlanrange">[]Distributed<wbr>Port<wbr>Group<wbr>Vlan<wbr>Range</a></span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>distributed<wbr>Virtual<wbr>Switch<wbr>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The ID of the DVS to add the
port group to. Forces a new resource if changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>active<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow<wbr>Forged<wbr>Transmits</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the virtual network adapter is allowed to send network traffic with a different MAC address than
that of its own.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow<wbr>Mac<wbr>Changes</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the Media Access Control (MAC) address can be changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow<wbr>Promiscuous</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Enable promiscuous mode on the network. This flag indicates whether or not all traffic is seen on a given port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto<wbr>Expand</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allows the port group to create additional ports
past the limit specified in `number_of_ports` if necessary. Default: `true`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block<wbr>All<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Indicates whether to block all ports by default.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [port shutdown
policy][port-shutdown-policy] to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>check<wbr>Beacon</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Enable beacon probing on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>custom<wbr>Attributes</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: string}</span>
    </dt>
    <dd>{{% md %}}Map of custom attribute ids to attribute
value string to set for port group. See [here][docs-setting-custom-attributes]
for a reference on how to set values for custom attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional description for the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>directpath<wbr>Gen2Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow VMDirectPath Gen2 on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The average egress bandwidth in bits per second if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The maximum egress burst size allowed in bytes if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for egress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The peak egress bandwidth during bursts in bits per second if egress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>failback</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will re-activate failed interfaces higher in precedence when they come back up.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The average ingress bandwidth in bits per second if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The maximum ingress burst size allowed in bytes if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for ingress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The peak ingress bandwidth during bursts in bits per second if ingress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>lacp<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Whether or not to enable LACP on all uplink ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>lacp<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The uplink LACP mode to use. Can be one of active or passive.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>live<wbr>Port<wbr>Moving<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow a port in this port group to be
moved to another port group while it is connected.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>netflow<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Indicates whether to enable netflow on all ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>netflow<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [Netflow
policy][netflow-policy] on this port group to be overridden on an individual
port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network<wbr>Resource<wbr>Pool<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The key of a network resource pool
to associate with this port group. The default is `-1`, which implies no
association.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network<wbr>Resource<wbr>Pool<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the network
resource pool set on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notify<wbr>Switches</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will notify the broadcast network of a NIC failover, triggering cache updates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>number<wbr>Of<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The number of ports available on this port
group. Cannot be decreased below the amount of used ports on the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port<wbr>Config<wbr>Reset<wbr>At<wbr>Disconnect</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Reset a port's settings to the
settings defined on this port group policy when the port disconnects.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port<wbr>Name<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional formatting policy for naming of
the ports in this port group. See the `portNameFormat` attribute listed
[here][ext-vsphere-portname-format] for details on the format syntax.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port<wbr>Private<wbr>Secondary<wbr>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The secondary VLAN ID for this port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>security<wbr>Policy<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [security policy
settings][sec-policy-settings] defined in this port group policy to be
overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>shaping<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [traffic shaping
options][traffic-shaping-settings] on this port group policy to be overridden
on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>standby<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of tag IDs to apply to this object.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>teaming<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The network adapter teaming policy. Can be one of loadbalance_ip, loadbalance_srcmac, loadbalance_srcid,
failover_explicit, or loadbalance_loadbased.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>traffic<wbr>Filter<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow any traffic filters on
this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tx<wbr>Uplink</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If true, a copy of packets sent to the switch will always be forwarded to an uplink in addition to the regular packet
forwarded done by the switch.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The port group type. Can be one of `earlyBinding` (static
binding) or `ephemeral`. Default: `earlyBinding`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>uplink<wbr>Teaming<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [uplink teaming
options][uplink-teaming-settings] on this port group to be overridden on an
individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [VLAN settings][vlan-settings]
on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan<wbr>Ranges</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#distributedportgroupvlanrange">Distributed<wbr>Port<wbr>Group<wbr>Vlan<wbr>Range[]</a></span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>distributed_<wbr>virtual_<wbr>switch_<wbr>uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The ID of the DVS to add the
port group to. Forces a new resource if changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>active_<wbr>uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow_<wbr>forged_<wbr>transmits</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the virtual network adapter is allowed to send network traffic with a different MAC address than
that of its own.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow_<wbr>mac_<wbr>changes</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the Media Access Control (MAC) address can be changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow_<wbr>promiscuous</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable promiscuous mode on the network. This flag indicates whether or not all traffic is seen on a given port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto_<wbr>expand</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allows the port group to create additional ports
past the limit specified in `number_of_ports` if necessary. Default: `true`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block_<wbr>all_<wbr>ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to block all ports by default.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [port shutdown
policy][port-shutdown-policy] to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>check_<wbr>beacon</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable beacon probing on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>custom_<wbr>attributes</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, str]</span>
    </dt>
    <dd>{{% md %}}Map of custom attribute ids to attribute
value string to set for port group. See [here][docs-setting-custom-attributes]
for a reference on how to set values for custom attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>description</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}An optional description for the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>directpath_<wbr>gen2_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow VMDirectPath Gen2 on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress_<wbr>shaping_<wbr>average_<wbr>bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The average egress bandwidth in bits per second if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress_<wbr>shaping_<wbr>burst_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The maximum egress burst size allowed in bytes if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress_<wbr>shaping_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for egress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress_<wbr>shaping_<wbr>peak_<wbr>bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The peak egress bandwidth during bursts in bits per second if egress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>failback</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will re-activate failed interfaces higher in precedence when they come back up.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress_<wbr>shaping_<wbr>average_<wbr>bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The average ingress bandwidth in bits per second if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress_<wbr>shaping_<wbr>burst_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The maximum ingress burst size allowed in bytes if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress_<wbr>shaping_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for ingress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress_<wbr>shaping_<wbr>peak_<wbr>bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The peak ingress bandwidth during bursts in bits per second if ingress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>lacp_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether or not to enable LACP on all uplink ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>lacp_<wbr>mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The uplink LACP mode to use. Can be one of active or passive.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>live_<wbr>port_<wbr>moving_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow a port in this port group to be
moved to another port group while it is connected.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>netflow_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to enable netflow on all ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>netflow_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [Netflow
policy][netflow-policy] on this port group to be overridden on an individual
port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network_<wbr>resource_<wbr>pool_<wbr>key</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The key of a network resource pool
to associate with this port group. The default is `-1`, which implies no
association.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network_<wbr>resource_<wbr>pool_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the network
resource pool set on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notify_<wbr>switches</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will notify the broadcast network of a NIC failover, triggering cache updates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>number_<wbr>of_<wbr>ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The number of ports available on this port
group. Cannot be decreased below the amount of used ports on the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port_<wbr>config_<wbr>reset_<wbr>at_<wbr>disconnect</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Reset a port's settings to the
settings defined on this port group policy when the port disconnects.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port_<wbr>name_<wbr>format</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}An optional formatting policy for naming of
the ports in this port group. See the `portNameFormat` attribute listed
[here][ext-vsphere-portname-format] for details on the format syntax.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port_<wbr>private_<wbr>secondary_<wbr>vlan_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The secondary VLAN ID for this port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>security_<wbr>policy_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [security policy
settings][sec-policy-settings] defined in this port group policy to be
overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>shaping_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [traffic shaping
options][traffic-shaping-settings] on this port group policy to be overridden
on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>standby_<wbr>uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of tag IDs to apply to this object.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>teaming_<wbr>policy</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The network adapter teaming policy. Can be one of loadbalance_ip, loadbalance_srcmac, loadbalance_srcid,
failover_explicit, or loadbalance_loadbased.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>traffic_<wbr>filter_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow any traffic filters on
this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tx_<wbr>uplink</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, a copy of packets sent to the switch will always be forwarded to an uplink in addition to the regular packet
forwarded done by the switch.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The port group type. Can be one of `earlyBinding` (static
binding) or `ephemeral`. Default: `earlyBinding`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>uplink_<wbr>teaming_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [uplink teaming
options][uplink-teaming-settings] on this port group to be overridden on an
individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [VLAN settings][vlan-settings]
on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan_<wbr>ranges</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#distributedportgroupvlanrange">List[Distributed<wbr>Port<wbr>Group<wbr>Vlan<wbr>Range]</a></span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}







## DistributedPortGroup Output Properties

The following output properties are available:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Config<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Version string of the configuration that this spec is trying to change.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The generated UUID of the portgroup.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Config<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Version string of the configuration that this spec is trying to change.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The generated UUID of the portgroup.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>config<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Version string of the configuration that this spec is trying to change.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The generated UUID of the portgroup.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>config_<wbr>version</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Version string of the configuration that this spec is trying to change.
{{% /md %}}</dd>

    <dt class="property-"
            title="">
        <span>key</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The generated UUID of the portgroup.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## Look up an Existing DistributedPortGroup Resource

Get an existing DistributedPortGroup resource's state with the given name, ID, and optional extra properties used to qualify the lookup.

{{< chooser language "javascript,typescript,python,go,csharp  " / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">public static </span><span class="nf">get</span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">id</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#ID">Input&lt;ID&gt;</a></span><span class="p">, </span><span class="nx">state</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/vsphere/#DistributedPortGroupState">DistributedPortGroupState</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">): </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/vsphere/#DistributedPortGroup">DistributedPortGroup</a></span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">static </span><span class="nf">get</span><span class="p">(resource_name, id, opts=None, </span>active_uplinks=None<span class="p">, </span>allow_forged_transmits=None<span class="p">, </span>allow_mac_changes=None<span class="p">, </span>allow_promiscuous=None<span class="p">, </span>auto_expand=None<span class="p">, </span>block_all_ports=None<span class="p">, </span>block_override_allowed=None<span class="p">, </span>check_beacon=None<span class="p">, </span>config_version=None<span class="p">, </span>custom_attributes=None<span class="p">, </span>description=None<span class="p">, </span>directpath_gen2_allowed=None<span class="p">, </span>distributed_virtual_switch_uuid=None<span class="p">, </span>egress_shaping_average_bandwidth=None<span class="p">, </span>egress_shaping_burst_size=None<span class="p">, </span>egress_shaping_enabled=None<span class="p">, </span>egress_shaping_peak_bandwidth=None<span class="p">, </span>failback=None<span class="p">, </span>ingress_shaping_average_bandwidth=None<span class="p">, </span>ingress_shaping_burst_size=None<span class="p">, </span>ingress_shaping_enabled=None<span class="p">, </span>ingress_shaping_peak_bandwidth=None<span class="p">, </span>key=None<span class="p">, </span>lacp_enabled=None<span class="p">, </span>lacp_mode=None<span class="p">, </span>live_port_moving_allowed=None<span class="p">, </span>name=None<span class="p">, </span>netflow_enabled=None<span class="p">, </span>netflow_override_allowed=None<span class="p">, </span>network_resource_pool_key=None<span class="p">, </span>network_resource_pool_override_allowed=None<span class="p">, </span>notify_switches=None<span class="p">, </span>number_of_ports=None<span class="p">, </span>port_config_reset_at_disconnect=None<span class="p">, </span>port_name_format=None<span class="p">, </span>port_private_secondary_vlan_id=None<span class="p">, </span>security_policy_override_allowed=None<span class="p">, </span>shaping_override_allowed=None<span class="p">, </span>standby_uplinks=None<span class="p">, </span>tags=None<span class="p">, </span>teaming_policy=None<span class="p">, </span>traffic_filter_override_allowed=None<span class="p">, </span>tx_uplink=None<span class="p">, </span>type=None<span class="p">, </span>uplink_teaming_override_allowed=None<span class="p">, </span>vlan_id=None<span class="p">, </span>vlan_override_allowed=None<span class="p">, </span>vlan_ranges=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>GetDistributedPortGroup<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">id</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#IDInput">IDInput</a></span><span class="p">, </span><span class="nx">state</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vsphere/sdk/go/vsphere/?tab=doc#DistributedPortGroupState">DistributedPortGroupState</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vsphere/sdk/go/vsphere/?tab=doc#DistributedPortGroup">DistributedPortGroup</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Vsphere/Pulumi.Vsphere.DistributedPortGroup.html">DistributedPortGroup</a></span><span class="nf"> Get</span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.Input.html">Input&lt;string&gt;</a></span> <span class="nx">id<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Vsphere/Pulumi.Vsphere..DistributedPortGroupState.html">DistributedPortGroupState</a></span>? <span class="nx">state<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span>Active<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Forged<wbr>Transmits</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the virtual network adapter is allowed to send network traffic with a different MAC address than
that of its own.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Mac<wbr>Changes</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the Media Access Control (MAC) address can be changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Promiscuous</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable promiscuous mode on the network. This flag indicates whether or not all traffic is seen on a given port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Expand</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allows the port group to create additional ports
past the limit specified in `number_of_ports` if necessary. Default: `true`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>All<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to block all ports by default.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [port shutdown
policy][port-shutdown-policy] to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Check<wbr>Beacon</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable beacon probing on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Config<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Version string of the configuration that this spec is trying to change.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Custom<wbr>Attributes</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dictionary&lt;string, string&gt;</span>
    </dt>
    <dd>{{% md %}}Map of custom attribute ids to attribute
value string to set for port group. See [here][docs-setting-custom-attributes]
for a reference on how to set values for custom attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional description for the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Directpath<wbr>Gen2Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow VMDirectPath Gen2 on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Distributed<wbr>Virtual<wbr>Switch<wbr>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The ID of the DVS to add the
port group to. Forces a new resource if changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The average egress bandwidth in bits per second if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum egress burst size allowed in bytes if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for egress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The peak egress bandwidth during bursts in bits per second if egress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Failback</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will re-activate failed interfaces higher in precedence when they come back up.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The average ingress bandwidth in bits per second if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum ingress burst size allowed in bytes if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for ingress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The peak ingress bandwidth during bursts in bits per second if ingress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The generated UUID of the portgroup.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Lacp<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether or not to enable LACP on all uplink ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Lacp<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The uplink LACP mode to use. Can be one of active or passive.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Live<wbr>Port<wbr>Moving<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow a port in this port group to be
moved to another port group while it is connected.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Netflow<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to enable netflow on all ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Netflow<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [Netflow
policy][netflow-policy] on this port group to be overridden on an individual
port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Resource<wbr>Pool<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The key of a network resource pool
to associate with this port group. The default is `-1`, which implies no
association.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Resource<wbr>Pool<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the network
resource pool set on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notify<wbr>Switches</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will notify the broadcast network of a NIC failover, triggering cache updates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Number<wbr>Of<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The number of ports available on this port
group. Cannot be decreased below the amount of used ports on the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Config<wbr>Reset<wbr>At<wbr>Disconnect</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Reset a port's settings to the
settings defined on this port group policy when the port disconnects.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Name<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional formatting policy for naming of
the ports in this port group. See the `portNameFormat` attribute listed
[here][ext-vsphere-portname-format] for details on the format syntax.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Private<wbr>Secondary<wbr>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The secondary VLAN ID for this port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Security<wbr>Policy<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [security policy
settings][sec-policy-settings] defined in this port group policy to be
overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Shaping<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [traffic shaping
options][traffic-shaping-settings] on this port group policy to be overridden
on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Standby<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}A list of tag IDs to apply to this object.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Teaming<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The network adapter teaming policy. Can be one of loadbalance_ip, loadbalance_srcmac, loadbalance_srcid,
failover_explicit, or loadbalance_loadbased.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Traffic<wbr>Filter<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow any traffic filters on
this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tx<wbr>Uplink</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, a copy of packets sent to the switch will always be forwarded to an uplink in addition to the regular packet
forwarded done by the switch.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The port group type. Can be one of `earlyBinding` (static
binding) or `ephemeral`. Default: `earlyBinding`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Uplink<wbr>Teaming<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [uplink teaming
options][uplink-teaming-settings] on this port group to be overridden on an
individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [VLAN settings][vlan-settings]
on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Ranges</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#distributedportgroupvlanrange">List&lt;Pulumi.<wbr>VSphere.<wbr>Inputs.<wbr>Distributed<wbr>Port<wbr>Group<wbr>Vlan<wbr>Range<wbr>Args&gt;</a></span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Active<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Forged<wbr>Transmits</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the virtual network adapter is allowed to send network traffic with a different MAC address than
that of its own.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Mac<wbr>Changes</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the Media Access Control (MAC) address can be changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Allow<wbr>Promiscuous</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable promiscuous mode on the network. This flag indicates whether or not all traffic is seen on a given port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Auto<wbr>Expand</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allows the port group to create additional ports
past the limit specified in `number_of_ports` if necessary. Default: `true`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>All<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to block all ports by default.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Block<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [port shutdown
policy][port-shutdown-policy] to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Check<wbr>Beacon</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable beacon probing on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Config<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Version string of the configuration that this spec is trying to change.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Custom<wbr>Attributes</span>
        <span class="property-indicator"></span>
        <span class="property-type">map[string]string</span>
    </dt>
    <dd>{{% md %}}Map of custom attribute ids to attribute
value string to set for port group. See [here][docs-setting-custom-attributes]
for a reference on how to set values for custom attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional description for the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Directpath<wbr>Gen2Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow VMDirectPath Gen2 on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Distributed<wbr>Virtual<wbr>Switch<wbr>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The ID of the DVS to add the
port group to. Forces a new resource if changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The average egress bandwidth in bits per second if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum egress burst size allowed in bytes if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for egress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Egress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The peak egress bandwidth during bursts in bits per second if egress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Failback</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will re-activate failed interfaces higher in precedence when they come back up.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The average ingress bandwidth in bits per second if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The maximum ingress burst size allowed in bytes if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for ingress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Ingress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The peak ingress bandwidth during bursts in bits per second if ingress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The generated UUID of the portgroup.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Lacp<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether or not to enable LACP on all uplink ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Lacp<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The uplink LACP mode to use. Can be one of active or passive.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Live<wbr>Port<wbr>Moving<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow a port in this port group to be
moved to another port group while it is connected.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Netflow<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to enable netflow on all ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Netflow<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [Netflow
policy][netflow-policy] on this port group to be overridden on an individual
port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Resource<wbr>Pool<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The key of a network resource pool
to associate with this port group. The default is `-1`, which implies no
association.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Network<wbr>Resource<wbr>Pool<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the network
resource pool set on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notify<wbr>Switches</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will notify the broadcast network of a NIC failover, triggering cache updates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Number<wbr>Of<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The number of ports available on this port
group. Cannot be decreased below the amount of used ports on the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Config<wbr>Reset<wbr>At<wbr>Disconnect</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Reset a port's settings to the
settings defined on this port group policy when the port disconnects.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Name<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional formatting policy for naming of
the ports in this port group. See the `portNameFormat` attribute listed
[here][ext-vsphere-portname-format] for details on the format syntax.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Port<wbr>Private<wbr>Secondary<wbr>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The secondary VLAN ID for this port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Security<wbr>Policy<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [security policy
settings][sec-policy-settings] defined in this port group policy to be
overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Shaping<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [traffic shaping
options][traffic-shaping-settings] on this port group policy to be overridden
on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Standby<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}A list of tag IDs to apply to this object.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Teaming<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The network adapter teaming policy. Can be one of loadbalance_ip, loadbalance_srcmac, loadbalance_srcid,
failover_explicit, or loadbalance_loadbased.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Traffic<wbr>Filter<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow any traffic filters on
this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Tx<wbr>Uplink</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, a copy of packets sent to the switch will always be forwarded to an uplink in addition to the regular packet
forwarded done by the switch.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The port group type. Can be one of `earlyBinding` (static
binding) or `ephemeral`. Default: `earlyBinding`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Uplink<wbr>Teaming<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [uplink teaming
options][uplink-teaming-settings] on this port group to be overridden on an
individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [VLAN settings][vlan-settings]
on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Vlan<wbr>Ranges</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#distributedportgroupvlanrange">[]Distributed<wbr>Port<wbr>Group<wbr>Vlan<wbr>Range</a></span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>active<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow<wbr>Forged<wbr>Transmits</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the virtual network adapter is allowed to send network traffic with a different MAC address than
that of its own.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow<wbr>Mac<wbr>Changes</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the Media Access Control (MAC) address can be changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow<wbr>Promiscuous</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Enable promiscuous mode on the network. This flag indicates whether or not all traffic is seen on a given port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto<wbr>Expand</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allows the port group to create additional ports
past the limit specified in `number_of_ports` if necessary. Default: `true`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block<wbr>All<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Indicates whether to block all ports by default.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [port shutdown
policy][port-shutdown-policy] to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>check<wbr>Beacon</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Enable beacon probing on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>config<wbr>Version</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Version string of the configuration that this spec is trying to change.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>custom<wbr>Attributes</span>
        <span class="property-indicator"></span>
        <span class="property-type">{[key: string]: string}</span>
    </dt>
    <dd>{{% md %}}Map of custom attribute ids to attribute
value string to set for port group. See [here][docs-setting-custom-attributes]
for a reference on how to set values for custom attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional description for the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>directpath<wbr>Gen2Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow VMDirectPath Gen2 on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>distributed<wbr>Virtual<wbr>Switch<wbr>Uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The ID of the DVS to add the
port group to. Forces a new resource if changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The average egress bandwidth in bits per second if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The maximum egress burst size allowed in bytes if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for egress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The peak egress bandwidth during bursts in bits per second if egress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>failback</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will re-activate failed interfaces higher in precedence when they come back up.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress<wbr>Shaping<wbr>Average<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The average ingress bandwidth in bits per second if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress<wbr>Shaping<wbr>Burst<wbr>Size</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The maximum ingress burst size allowed in bytes if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress<wbr>Shaping<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for ingress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress<wbr>Shaping<wbr>Peak<wbr>Bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The peak ingress bandwidth during bursts in bits per second if ingress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The generated UUID of the portgroup.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>lacp<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Whether or not to enable LACP on all uplink ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>lacp<wbr>Mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The uplink LACP mode to use. Can be one of active or passive.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>live<wbr>Port<wbr>Moving<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow a port in this port group to be
moved to another port group while it is connected.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name of the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>netflow<wbr>Enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Indicates whether to enable netflow on all ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>netflow<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [Netflow
policy][netflow-policy] on this port group to be overridden on an individual
port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network<wbr>Resource<wbr>Pool<wbr>Key</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The key of a network resource pool
to associate with this port group. The default is `-1`, which implies no
association.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network<wbr>Resource<wbr>Pool<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the network
resource pool set on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notify<wbr>Switches</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will notify the broadcast network of a NIC failover, triggering cache updates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>number<wbr>Of<wbr>Ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The number of ports available on this port
group. Cannot be decreased below the amount of used ports on the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port<wbr>Config<wbr>Reset<wbr>At<wbr>Disconnect</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Reset a port's settings to the
settings defined on this port group policy when the port disconnects.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port<wbr>Name<wbr>Format</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}An optional formatting policy for naming of
the ports in this port group. See the `portNameFormat` attribute listed
[here][ext-vsphere-portname-format] for details on the format syntax.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port<wbr>Private<wbr>Secondary<wbr>Vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The secondary VLAN ID for this port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>security<wbr>Policy<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [security policy
settings][sec-policy-settings] defined in this port group policy to be
overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>shaping<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [traffic shaping
options][traffic-shaping-settings] on this port group policy to be overridden
on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>standby<wbr>Uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}A list of tag IDs to apply to this object.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>teaming<wbr>Policy</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The network adapter teaming policy. Can be one of loadbalance_ip, loadbalance_srcmac, loadbalance_srcid,
failover_explicit, or loadbalance_loadbased.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>traffic<wbr>Filter<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow any traffic filters on
this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tx<wbr>Uplink</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}If true, a copy of packets sent to the switch will always be forwarded to an uplink in addition to the regular packet
forwarded done by the switch.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The port group type. Can be one of `earlyBinding` (static
binding) or `ephemeral`. Default: `earlyBinding`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>uplink<wbr>Teaming<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [uplink teaming
options][uplink-teaming-settings] on this port group to be overridden on an
individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan<wbr>Id</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan<wbr>Override<wbr>Allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Allow the [VLAN settings][vlan-settings]
on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan<wbr>Ranges</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#distributedportgroupvlanrange">Distributed<wbr>Port<wbr>Group<wbr>Vlan<wbr>Range[]</a></span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>active_<wbr>uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow_<wbr>forged_<wbr>transmits</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the virtual network adapter is allowed to send network traffic with a different MAC address than
that of its own.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow_<wbr>mac_<wbr>changes</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Controls whether or not the Media Access Control (MAC) address can be changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>allow_<wbr>promiscuous</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable promiscuous mode on the network. This flag indicates whether or not all traffic is seen on a given port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>auto_<wbr>expand</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allows the port group to create additional ports
past the limit specified in `number_of_ports` if necessary. Default: `true`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block_<wbr>all_<wbr>ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to block all ports by default.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>block_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [port shutdown
policy][port-shutdown-policy] to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>check_<wbr>beacon</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Enable beacon probing on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>config_<wbr>version</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Version string of the configuration that this spec is trying to change.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>custom_<wbr>attributes</span>
        <span class="property-indicator"></span>
        <span class="property-type">Dict[str, str]</span>
    </dt>
    <dd>{{% md %}}Map of custom attribute ids to attribute
value string to set for port group. See [here][docs-setting-custom-attributes]
for a reference on how to set values for custom attributes.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>description</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}An optional description for the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>directpath_<wbr>gen2_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow VMDirectPath Gen2 on the ports this policy applies to.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>distributed_<wbr>virtual_<wbr>switch_<wbr>uuid</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The ID of the DVS to add the
port group to. Forces a new resource if changed.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress_<wbr>shaping_<wbr>average_<wbr>bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The average egress bandwidth in bits per second if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress_<wbr>shaping_<wbr>burst_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The maximum egress burst size allowed in bytes if egress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress_<wbr>shaping_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for egress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>egress_<wbr>shaping_<wbr>peak_<wbr>bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The peak egress bandwidth during bursts in bits per second if egress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>failback</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will re-activate failed interfaces higher in precedence when they come back up.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress_<wbr>shaping_<wbr>average_<wbr>bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The average ingress bandwidth in bits per second if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress_<wbr>shaping_<wbr>burst_<wbr>size</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The maximum ingress burst size allowed in bytes if ingress shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress_<wbr>shaping_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}True if the traffic shaper is enabled for ingress traffic on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>ingress_<wbr>shaping_<wbr>peak_<wbr>bandwidth</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The peak ingress bandwidth during bursts in bits per second if ingress traffic shaping is enabled on the port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>key</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The generated UUID of the portgroup.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>lacp_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Whether or not to enable LACP on all uplink ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>lacp_<wbr>mode</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The uplink LACP mode to use. Can be one of active or passive.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>live_<wbr>port_<wbr>moving_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow a port in this port group to be
moved to another port group while it is connected.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name of the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>netflow_<wbr>enabled</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Indicates whether to enable netflow on all ports.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>netflow_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [Netflow
policy][netflow-policy] on this port group to be overridden on an individual
port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network_<wbr>resource_<wbr>pool_<wbr>key</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The key of a network resource pool
to associate with this port group. The default is `-1`, which implies no
association.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>network_<wbr>resource_<wbr>pool_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the network
resource pool set on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notify_<wbr>switches</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, the teaming policy will notify the broadcast network of a NIC failover, triggering cache updates.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>number_<wbr>of_<wbr>ports</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The number of ports available on this port
group. Cannot be decreased below the amount of used ports on the port group.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port_<wbr>config_<wbr>reset_<wbr>at_<wbr>disconnect</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Reset a port's settings to the
settings defined on this port group policy when the port disconnects.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port_<wbr>name_<wbr>format</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}An optional formatting policy for naming of
the ports in this port group. See the `portNameFormat` attribute listed
[here][ext-vsphere-portname-format] for details on the format syntax.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>port_<wbr>private_<wbr>secondary_<wbr>vlan_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The secondary VLAN ID for this port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>security_<wbr>policy_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [security policy
settings][sec-policy-settings] defined in this port group policy to be
overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>shaping_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [traffic shaping
options][traffic-shaping-settings] on this port group policy to be overridden
on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>standby_<wbr>uplinks</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}List of active uplinks used for load balancing, matching the names of the uplinks assigned in the DVS.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tags</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}A list of tag IDs to apply to this object.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>teaming_<wbr>policy</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The network adapter teaming policy. Can be one of loadbalance_ip, loadbalance_srcmac, loadbalance_srcid,
failover_explicit, or loadbalance_loadbased.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>traffic_<wbr>filter_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow any traffic filters on
this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>tx_<wbr>uplink</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}If true, a copy of packets sent to the switch will always be forwarded to an uplink in addition to the regular packet
forwarded done by the switch.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>type</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The port group type. Can be one of `earlyBinding` (static
binding) or `ephemeral`. Default: `earlyBinding`.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>uplink_<wbr>teaming_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [uplink teaming
options][uplink-teaming-settings] on this port group to be overridden on an
individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan_<wbr>id</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan_<wbr>override_<wbr>allowed</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Allow the [VLAN settings][vlan-settings]
on this port group to be overridden on an individual port.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>vlan_<wbr>ranges</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="#distributedportgroupvlanrange">List[Distributed<wbr>Port<wbr>Group<wbr>Vlan<wbr>Range]</a></span>
    </dt>
    <dd>{{% md %}}The VLAN ID for single VLAN mode. 0 denotes no VLAN.
{{% /md %}}</dd>

</dl>
{{% /choosable %}}










## Supporting Types

<h4>Distributed<wbr>Port<wbr>Group<wbr>Vlan<wbr>Range</h4>
{{% choosable language nodejs %}}
> See the <a href="/docs/reference/pkg/nodejs/pulumi/vsphere/types/input/#DistributedPortGroupVlanRange">input</a> and <a href="/docs/reference/pkg/nodejs/pulumi/vsphere/types/output/#DistributedPortGroupVlanRange">output</a> API doc for this type.
{{% /choosable %}}

{{% choosable language go %}}
> See the <a href="https://pkg.go.dev/github.com/pulumi/pulumi-vsphere/sdk/go/vsphere/?tab=doc#DistributedPortGroupVlanRangeArgs">input</a> and <a href="https://pkg.go.dev/github.com/pulumi/pulumi-vsphere/sdk/go/vsphere/?tab=doc#DistributedPortGroupVlanRangeOutput">output</a> API doc for this type.
{{% /choosable %}}




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Max<wbr>Vlan</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Min<wbr>Vlan</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>Max<wbr>Vlan</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>Min<wbr>Vlan</span>
        <span class="property-indicator"></span>
        <span class="property-type">int</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>max<wbr>Vlan</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>min<wbr>Vlan</span>
        <span class="property-indicator"></span>
        <span class="property-type">number</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span>max<wbr>Vlan</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

    <dt class="property-required"
            title="Required">
        <span>min<wbr>Vlan</span>
        <span class="property-indicator"></span>
        <span class="property-type">float</span>
    </dt>
    <dd>{{% md %}}{{% /md %}}</dd>

</dl>
{{% /choosable %}}









<h3>Package Details</h3>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-vsphere">https://github.com/pulumi/pulumi-vsphere</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
    
</dl>
