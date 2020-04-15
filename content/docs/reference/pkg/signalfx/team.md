
---
title: "Team"
block_external_search_index: true
---



Handles management of SignalFx teams.

You can configure [team notification policies](https://docs.signalfx.com/en/latest/managing/teams/team-notifications.html) using this resource and the various `notifications_*` properties.

> This content is derived from https://github.com/terraform-providers/terraform-provider-signalfx/blob/master/website/docs/r/team.html.markdown.



## Create a Team Resource

{{< chooser language "javascript,typescript,python,go,csharp" / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/signalfx/#Team">Team</a></span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">args</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/signalfx/#TeamArgs">TeamArgs</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nf">Team</span><span class="p">(resource_name, opts=None, </span>description=None<span class="p">, </span>members=None<span class="p">, </span>name=None<span class="p">, </span>notifications_criticals=None<span class="p">, </span>notifications_defaults=None<span class="p">, </span>notifications_infos=None<span class="p">, </span>notifications_majors=None<span class="p">, </span>notifications_minors=None<span class="p">, </span>notifications_warnings=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>NewTeam<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">args</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-signalfx/sdk/go/signalfx/?tab=doc#TeamArgs">TeamArgs</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-signalfx/sdk/go/signalfx/?tab=doc#Team">Team</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Signalfx/Pulumi.Signalfx.Team.html">Team</a></span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Signalfx/Pulumi.SignalFx.TeamArgs.html">TeamArgs</a></span>? <span class="nx">args = null<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span>Description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Description of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Members</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of user IDs to include in the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Name of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Criticals</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for critical alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Defaults</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for default alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Infos</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for info alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Majors</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for major alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Minors</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for minor alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Warnings</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for warning alerts
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Description of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Members</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of user IDs to include in the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Name of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Criticals</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for critical alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Defaults</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for default alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Infos</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for info alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Majors</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for major alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Minors</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for minor alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Warnings</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for warning alerts
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Description of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>members</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of user IDs to include in the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Name of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Criticals</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for critical alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Defaults</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for default alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Infos</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for info alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Majors</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for major alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Minors</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for minor alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Warnings</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for warning alerts
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>description</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Description of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>members</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}List of user IDs to include in the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Name of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>criticals</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for critical alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>defaults</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for default alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>infos</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for info alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>majors</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for major alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>minors</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for minor alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>warnings</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for warning alerts
{{% /md %}}</dd>

</dl>
{{% /choosable %}}







## Team Output Properties

The following output properties are available:




{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URL of the team
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URL of the team
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URL of the team
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}URL of the team
{{% /md %}}</dd>

</dl>
{{% /choosable %}}








## Look up an Existing Team Resource

Get an existing Team resource's state with the given name, ID, and optional extra properties used to qualify the lookup.

{{< chooser language "javascript,typescript,python,go,csharp  " / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">public static </span><span class="nf">get</span><span class="p">(</span><span class="nx">name</span>: <span class="nx"><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/string">string</a></span><span class="p">, </span><span class="nx">id</span>: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#ID">Input&lt;ID&gt;</a></span><span class="p">, </span><span class="nx">state</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/signalfx/#TeamState">TeamState</a></span><span class="p">, </span><span class="nx">opts</span>?: <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">): </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/signalfx/#Team">Team</a></span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">static </span><span class="nf">get</span><span class="p">(resource_name, id, opts=None, </span>description=None<span class="p">, </span>members=None<span class="p">, </span>name=None<span class="p">, </span>notifications_criticals=None<span class="p">, </span>notifications_defaults=None<span class="p">, </span>notifications_infos=None<span class="p">, </span>notifications_majors=None<span class="p">, </span>notifications_minors=None<span class="p">, </span>notifications_warnings=None<span class="p">, </span>url=None<span class="p">, __props__=None);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>GetTeam<span class="p">(</span><span class="nx">ctx</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span> <span class="nx"><a href="https://golang.org/pkg/builtin/#string">string</a></span><span class="p">, </span><span class="nx">id</span> <span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#IDInput">IDInput</a></span><span class="p">, </span><span class="nx">state</span> *<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-signalfx/sdk/go/signalfx/?tab=doc#TeamState">TeamState</a></span><span class="p">, </span><span class="nx">opts</span> ...<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-signalfx/sdk/go/signalfx/?tab=doc#Team">Team</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Signalfx/Pulumi.Signalfx.Team.html">Team</a></span><span class="nf"> Get</span><span class="p">(</span><span class="nx"><a href="https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/built-in-types">string</a></span> <span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.Input.html">Input&lt;string&gt;</a></span> <span class="nx">id<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Signalfx/Pulumi.Signalfx..TeamState.html">TeamState</a></span>? <span class="nx">state<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>? <span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span>Description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Description of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Members</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of user IDs to include in the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Name of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Criticals</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for critical alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Defaults</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for default alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Infos</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for info alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Majors</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for major alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Minors</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for minor alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Warnings</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for warning alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URL of the team
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>Description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Description of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Members</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of user IDs to include in the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Name of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Criticals</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for critical alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Defaults</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for default alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Infos</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for info alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Majors</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for major alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Minors</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for minor alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Notifications<wbr>Warnings</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for warning alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>Url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URL of the team
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>description</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Description of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>members</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of user IDs to include in the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Name of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Criticals</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for critical alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Defaults</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for default alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Infos</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for info alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Majors</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for major alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Minors</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for minor alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications<wbr>Warnings</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for warning alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}URL of the team
{{% /md %}}</dd>

</dl>
{{% /choosable %}}


{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span>description</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Description of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>members</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}List of user IDs to include in the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Name of the team.
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>criticals</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for critical alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>defaults</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for default alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>infos</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for info alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>majors</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for major alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>minors</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for minor alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>notifications_<wbr>warnings</span>
        <span class="property-indicator"></span>
        <span class="property-type">List[str]</span>
    </dt>
    <dd>{{% md %}}Where to send notifications for warning alerts
{{% /md %}}</dd>

    <dt class="property-optional"
            title="Optional">
        <span>url</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}URL of the team
{{% /md %}}</dd>

</dl>
{{% /choosable %}}











<h3>Package Details</h3>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-signalfx">https://github.com/pulumi/pulumi-signalfx</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
    
</dl>
