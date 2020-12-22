
---
title: "NomadSecretRole"
title_tag: "Resource NomadSecretRole | Package Vault"
meta_desc: "Explore the NomadSecretRole resource of the Vault package, including examples, input properties, output properties, lookup functions, and supporting types. "
---



<!-- WARNING: this file was generated by Pulumi Docs Generator. -->
<!-- Do not edit by hand unless you're certain you know what you are doing! -->

## Import

Nomad secret role can be imported using the `backend`, e.g.

```sh
 $ pulumi import vault:index/nomadSecretRole:NomadSecretRole bob nomad/role/bob
```




## Create a NomadSecretRole Resource {#create}
{{< chooser language "typescript,python,go,csharp" / >}}


{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">new </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/vault/#NomadSecretRole">NomadSecretRole</a></span><span class="p">(</span><span class="nx">name</span><span class="p">:</span> <span class="nx">string</span><span class="p">, </span><span class="nx">args</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/vault/#NomadSecretRoleArgs">NomadSecretRoleArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p">?:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">);</span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class="k">def </span><span class="nx"><a href="/docs/reference/pkg/python/pulumi_vault/#pulumi_vault.NomadSecretRole">NomadSecretRole</a></span><span class="p">(</span><span class="nx">resource_name</span><span class="p">:</span> <span class="nx">str</span><span class="p">, </span><span class="nx">opts</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/python/pulumi/#pulumi.ResourceOptions">Optional[ResourceOptions]</a></span> = None<span class="p">, </span><span class="nx">backend</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">global_</span><span class="p">:</span> <span class="nx">Optional[bool]</span> = None<span class="p">, </span><span class="nx">policies</span><span class="p">:</span> <span class="nx">Optional[Sequence[str]]</span> = None<span class="p">, </span><span class="nx">role</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">type</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vault/sdk/v3/go/vault/?tab=doc#NomadSecretRole">NewNomadSecretRole</a></span><span class="p">(</span><span class="nx">ctx</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v3/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span><span class="p"> </span><span class="nx">string</span><span class="p">, </span><span class="nx">args</span><span class="p"> </span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vault/sdk/v3/go/vault/?tab=doc#NomadSecretRoleArgs">NomadSecretRoleArgs</a></span><span class="p">, </span><span class="nx">opts</span><span class="p"> ...</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v3/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vault/sdk/v3/go/vault/?tab=doc#NomadSecretRole">NomadSecretRole</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Vault/Pulumi.Vault.NomadSecretRole.html">NomadSecretRole</a></span><span class="p">(</span><span class="nx">string</span><span class="p"> </span><span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Vault/Pulumi.Vault.NomadSecretRoleArgs.html">NomadSecretRoleArgs</a></span><span class="p"> </span><span class="nx">args<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span><span class="p">? </span><span class="nx">opts = null<span class="p">)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language nodejs %}}

<dl class="resources-properties">
  
    <dt
        class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>
      The unique name of the resource.
    </dd>
  
    <dt
        class="property-required" title="Required">
        <span>args</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="/docs/reference/pkg/nodejs/pulumi/vault/#NomadSecretRoleArgs">NomadSecretRoleArgs</a></span>
    </dt>
    <dd>
      The arguments to resource properties.
    </dd>
  
    <dt
        class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span>
    </dt>
    <dd>
      Bag of options to control resource&#39;s behavior.
    </dd>
  

</dl>

{{% /choosable %}}

{{% choosable language python %}}

<dl class="resources-properties">
    <dt class="property-required" title="Required">
        <span>resource_name</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>The unique name of the resource.</dd>
    <dt class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
        <span class="property-type">
            <a href="/docs/reference/pkg/python/pulumi/#pulumi.ResourceOptions">ResourceOptions</a>
        </span>
    </dt>
    <dd>A bag of options that control this resource's behavior.</dd>
</dl>
{{% /choosable %}}

{{% choosable language go %}}

<dl class="resources-properties">
  
    <dt
        class="property-optional" title="Optional">
        <span>ctx</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v3/go/pulumi?tab=doc#Context">Context</a></span>
    </dt>
    <dd>
      Context object for the current deployment.
    </dd>
  
    <dt
        class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>
      The unique name of the resource.
    </dd>
  
    <dt
        class="property-required" title="Required">
        <span>args</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vault/sdk/v3/go/vault/?tab=doc#NomadSecretRoleArgs">NomadSecretRoleArgs</a></span>
    </dt>
    <dd>
      The arguments to resource properties.
    </dd>
  
    <dt
        class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v3/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span>
    </dt>
    <dd>
      Bag of options to control resource&#39;s behavior.
    </dd>
  

</dl>

{{% /choosable %}}

{{% choosable language csharp %}}

<dl class="resources-properties">
  
    <dt
        class="property-required" title="Required">
        <span>name</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>
      The unique name of the resource.
    </dd>
  
    <dt
        class="property-required" title="Required">
        <span>args</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="/docs/reference/pkg/dotnet/Pulumi.Vault/Pulumi.Vault.NomadSecretRoleArgs.html">NomadSecretRoleArgs</a></span>
    </dt>
    <dd>
      The arguments to resource properties.
    </dd>
  
    <dt
        class="property-optional" title="Optional">
        <span>opts</span>
        <span class="property-indicator"></span>
        <span class="property-type"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span>
    </dt>
    <dd>
      Bag of options to control resource&#39;s behavior.
    </dd>
  

</dl>

{{% /choosable %}}

## NomadSecretRole Resource Properties {#properties}

To learn more about resource properties and how to use them, see [Inputs and Outputs]({{< relref "/docs/intro/concepts/programming-model#outputs" >}}) in the Programming Model docs.

### Inputs

The NomadSecretRole resource accepts the following [input]({{< relref "/docs/intro/concepts/programming-model#outputs" >}}) properties:



{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="backend_csharp">
<a href="#backend_csharp" style="color: inherit; text-decoration: inherit;">Backend</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The unique path this backend should be mounted at. Must
not begin or end with a `/`. Defaults to `nomad`.
{{% /md %}}</dd>
    <dt class="property-required"
            title="Required">
        <span id="role_csharp">
<a href="#role_csharp" style="color: inherit; text-decoration: inherit;">Role</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name to identify this role within the backend.
Must be unique within the backend.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="global_csharp">
<a href="#global_csharp" style="color: inherit; text-decoration: inherit;">Global</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Specifies if the generated token should be global. Defaults to 
false.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="policies_csharp">
<a href="#policies_csharp" style="color: inherit; text-decoration: inherit;">Policies</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of policies attached to the generated token. This setting is only used 
when `type` is 'client'.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="type_csharp">
<a href="#type_csharp" style="color: inherit; text-decoration: inherit;">Type</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the type of token to create when using this role. Valid 
settings are 'client' and 'management'. Defaults to 'client'.
{{% /md %}}</dd>
</dl>
{{% /choosable %}}

{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="backend_go">
<a href="#backend_go" style="color: inherit; text-decoration: inherit;">Backend</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The unique path this backend should be mounted at. Must
not begin or end with a `/`. Defaults to `nomad`.
{{% /md %}}</dd>
    <dt class="property-required"
            title="Required">
        <span id="role_go">
<a href="#role_go" style="color: inherit; text-decoration: inherit;">Role</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name to identify this role within the backend.
Must be unique within the backend.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="global_go">
<a href="#global_go" style="color: inherit; text-decoration: inherit;">Global</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Specifies if the generated token should be global. Defaults to 
false.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="policies_go">
<a href="#policies_go" style="color: inherit; text-decoration: inherit;">Policies</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of policies attached to the generated token. This setting is only used 
when `type` is 'client'.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="type_go">
<a href="#type_go" style="color: inherit; text-decoration: inherit;">Type</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the type of token to create when using this role. Valid 
settings are 'client' and 'management'. Defaults to 'client'.
{{% /md %}}</dd>
</dl>
{{% /choosable %}}

{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="backend_nodejs">
<a href="#backend_nodejs" style="color: inherit; text-decoration: inherit;">backend</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The unique path this backend should be mounted at. Must
not begin or end with a `/`. Defaults to `nomad`.
{{% /md %}}</dd>
    <dt class="property-required"
            title="Required">
        <span id="role_nodejs">
<a href="#role_nodejs" style="color: inherit; text-decoration: inherit;">role</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name to identify this role within the backend.
Must be unique within the backend.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="global_nodejs">
<a href="#global_nodejs" style="color: inherit; text-decoration: inherit;">global</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Specifies if the generated token should be global. Defaults to 
false.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="policies_nodejs">
<a href="#policies_nodejs" style="color: inherit; text-decoration: inherit;">policies</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of policies attached to the generated token. This setting is only used 
when `type` is 'client'.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="type_nodejs">
<a href="#type_nodejs" style="color: inherit; text-decoration: inherit;">type</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the type of token to create when using this role. Valid 
settings are 'client' and 'management'. Defaults to 'client'.
{{% /md %}}</dd>
</dl>
{{% /choosable %}}

{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-required"
            title="Required">
        <span id="backend_python">
<a href="#backend_python" style="color: inherit; text-decoration: inherit;">backend</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The unique path this backend should be mounted at. Must
not begin or end with a `/`. Defaults to `nomad`.
{{% /md %}}</dd>
    <dt class="property-required"
            title="Required">
        <span id="role_python">
<a href="#role_python" style="color: inherit; text-decoration: inherit;">role</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name to identify this role within the backend.
Must be unique within the backend.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="global__python">
<a href="#global__python" style="color: inherit; text-decoration: inherit;">global_</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Specifies if the generated token should be global. Defaults to 
false.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="policies_python">
<a href="#policies_python" style="color: inherit; text-decoration: inherit;">policies</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">Sequence[str]</span>
    </dt>
    <dd>{{% md %}}List of policies attached to the generated token. This setting is only used 
when `type` is 'client'.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="type_python">
<a href="#type_python" style="color: inherit; text-decoration: inherit;">type</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Specifies the type of token to create when using this role. Valid 
settings are 'client' and 'management'. Defaults to 'client'.
{{% /md %}}</dd>
</dl>
{{% /choosable %}}


### Outputs

All [input](#inputs) properties are implicitly available as output properties. Additionally, the NomadSecretRole resource produces the following output properties:



{{% choosable language csharp %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="id_csharp">
<a href="#id_csharp" style="color: inherit; text-decoration: inherit;">Id</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The provider-assigned unique ID for this managed resource.{{% /md %}}</dd>
</dl>
{{% /choosable %}}

{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="id_go">
<a href="#id_go" style="color: inherit; text-decoration: inherit;">Id</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The provider-assigned unique ID for this managed resource.{{% /md %}}</dd>
</dl>
{{% /choosable %}}

{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="id_nodejs">
<a href="#id_nodejs" style="color: inherit; text-decoration: inherit;">id</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The provider-assigned unique ID for this managed resource.{{% /md %}}</dd>
</dl>
{{% /choosable %}}

{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-"
            title="">
        <span id="id_python">
<a href="#id_python" style="color: inherit; text-decoration: inherit;">id</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The provider-assigned unique ID for this managed resource.{{% /md %}}</dd>
</dl>
{{% /choosable %}}



## Look up an Existing NomadSecretRole Resource {#look-up}

Get an existing NomadSecretRole resource's state with the given name, ID, and optional extra properties used to qualify the lookup.
{{< chooser language "typescript,python,go,csharp" / >}}

{{% choosable language nodejs %}}
<div class="highlight"><pre class="chroma"><code class="language-typescript" data-lang="typescript"><span class="k">public static </span><span class="nf">get</span><span class="p">(</span><span class="nx">name</span><span class="p">:</span> <span class="nx">string</span><span class="p">, </span><span class="nx">id</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#ID">Input&lt;ID&gt;</a></span><span class="p">, </span><span class="nx">state</span><span class="p">?:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/vault/#NomadSecretRoleState">NomadSecretRoleState</a></span><span class="p">, </span><span class="nx">opts</span><span class="p">?:</span> <span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/pulumi/#CustomResourceOptions">CustomResourceOptions</a></span><span class="p">): </span><span class="nx"><a href="/docs/reference/pkg/nodejs/pulumi/vault/#NomadSecretRole">NomadSecretRole</a></span></code></pre></div>
{{% /choosable %}}

{{% choosable language python %}}
<div class="highlight"><pre class="chroma"><code class="language-python" data-lang="python"><span class=nd>@staticmethod</span>
<span class="k">def </span><span class="nf">get</span><span class="p">(</span><span class="nx">resource_name</span><span class="p">:</span> <span class="nx">str</span><span class="p">, </span><span class="nx">id</span><span class="p">:</span> <span class="nx">str</span><span class="p">, </span><span class="nx">opts</span><span class="p">:</span> <span class="nx"><a href="/docs/reference/pkg/python/pulumi/#pulumi.ResourceOptions">Optional[ResourceOptions]</a></span> = None<span class="p">, </span><span class="nx">backend</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">global_</span><span class="p">:</span> <span class="nx">Optional[bool]</span> = None<span class="p">, </span><span class="nx">policies</span><span class="p">:</span> <span class="nx">Optional[Sequence[str]]</span> = None<span class="p">, </span><span class="nx">role</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">, </span><span class="nx">type</span><span class="p">:</span> <span class="nx">Optional[str]</span> = None<span class="p">) -&gt;</span> NomadSecretRole</code></pre></div>
{{% /choosable %}}

{{% choosable language go %}}
<div class="highlight"><pre class="chroma"><code class="language-go" data-lang="go"><span class="k">func </span>GetNomadSecretRole<span class="p">(</span><span class="nx">ctx</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v3/go/pulumi?tab=doc#Context">Context</a></span><span class="p">, </span><span class="nx">name</span><span class="p"> </span><span class="nx">string</span><span class="p">, </span><span class="nx">id</span><span class="p"> </span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v3/go/pulumi?tab=doc#IDInput">IDInput</a></span><span class="p">, </span><span class="nx">state</span><span class="p"> *</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vault/sdk/v3/go/vault/?tab=doc#NomadSecretRoleState">NomadSecretRoleState</a></span><span class="p">, </span><span class="nx">opts</span><span class="p"> ...</span><span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi/sdk/v3/go/pulumi?tab=doc#ResourceOption">ResourceOption</a></span><span class="p">) (*<span class="nx"><a href="https://pkg.go.dev/github.com/pulumi/pulumi-vault/sdk/v3/go/vault/?tab=doc#NomadSecretRole">NomadSecretRole</a></span>, error)</span></code></pre></div>
{{% /choosable %}}

{{% choosable language csharp %}}
<div class="highlight"><pre class="chroma"><code class="language-csharp" data-lang="csharp"><span class="k">public static </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Vault/Pulumi.Vault.NomadSecretRole.html">NomadSecretRole</a></span><span class="nf"> Get</span><span class="p">(</span><span class="nx">string</span><span class="p"> </span><span class="nx">name<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.Input-1.html">Input&lt;string&gt;</a></span><span class="p"> </span><span class="nx">id<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi.Vault/Pulumi.Vault..NomadSecretRoleState.html">NomadSecretRoleState</a></span><span class="p">? </span><span class="nx">state<span class="p">, </span><span class="nx"><a href="/docs/reference/pkg/dotnet/Pulumi/Pulumi.CustomResourceOptions.html">CustomResourceOptions</a></span><span class="p">? </span><span class="nx">opts = null<span class="p">)</span></code></pre></div>
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
        <span id="state_backend_csharp">
<a href="#state_backend_csharp" style="color: inherit; text-decoration: inherit;">Backend</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The unique path this backend should be mounted at. Must
not begin or end with a `/`. Defaults to `nomad`.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_global_csharp">
<a href="#state_global_csharp" style="color: inherit; text-decoration: inherit;">Global</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Specifies if the generated token should be global. Defaults to 
false.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_policies_csharp">
<a href="#state_policies_csharp" style="color: inherit; text-decoration: inherit;">Policies</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">List&lt;string&gt;</span>
    </dt>
    <dd>{{% md %}}List of policies attached to the generated token. This setting is only used 
when `type` is 'client'.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_role_csharp">
<a href="#state_role_csharp" style="color: inherit; text-decoration: inherit;">Role</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name to identify this role within the backend.
Must be unique within the backend.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_type_csharp">
<a href="#state_type_csharp" style="color: inherit; text-decoration: inherit;">Type</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the type of token to create when using this role. Valid 
settings are 'client' and 'management'. Defaults to 'client'.
{{% /md %}}</dd>
</dl>
{{% /choosable %}}

{{% choosable language go %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="state_backend_go">
<a href="#state_backend_go" style="color: inherit; text-decoration: inherit;">Backend</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The unique path this backend should be mounted at. Must
not begin or end with a `/`. Defaults to `nomad`.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_global_go">
<a href="#state_global_go" style="color: inherit; text-decoration: inherit;">Global</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Specifies if the generated token should be global. Defaults to 
false.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_policies_go">
<a href="#state_policies_go" style="color: inherit; text-decoration: inherit;">Policies</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">[]string</span>
    </dt>
    <dd>{{% md %}}List of policies attached to the generated token. This setting is only used 
when `type` is 'client'.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_role_go">
<a href="#state_role_go" style="color: inherit; text-decoration: inherit;">Role</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name to identify this role within the backend.
Must be unique within the backend.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_type_go">
<a href="#state_type_go" style="color: inherit; text-decoration: inherit;">Type</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the type of token to create when using this role. Valid 
settings are 'client' and 'management'. Defaults to 'client'.
{{% /md %}}</dd>
</dl>
{{% /choosable %}}

{{% choosable language nodejs %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="state_backend_nodejs">
<a href="#state_backend_nodejs" style="color: inherit; text-decoration: inherit;">backend</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The unique path this backend should be mounted at. Must
not begin or end with a `/`. Defaults to `nomad`.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_global_nodejs">
<a href="#state_global_nodejs" style="color: inherit; text-decoration: inherit;">global</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">boolean</span>
    </dt>
    <dd>{{% md %}}Specifies if the generated token should be global. Defaults to 
false.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_policies_nodejs">
<a href="#state_policies_nodejs" style="color: inherit; text-decoration: inherit;">policies</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string[]</span>
    </dt>
    <dd>{{% md %}}List of policies attached to the generated token. This setting is only used 
when `type` is 'client'.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_role_nodejs">
<a href="#state_role_nodejs" style="color: inherit; text-decoration: inherit;">role</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}The name to identify this role within the backend.
Must be unique within the backend.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_type_nodejs">
<a href="#state_type_nodejs" style="color: inherit; text-decoration: inherit;">type</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">string</span>
    </dt>
    <dd>{{% md %}}Specifies the type of token to create when using this role. Valid 
settings are 'client' and 'management'. Defaults to 'client'.
{{% /md %}}</dd>
</dl>
{{% /choosable %}}

{{% choosable language python %}}
<dl class="resources-properties">

    <dt class="property-optional"
            title="Optional">
        <span id="state_backend_python">
<a href="#state_backend_python" style="color: inherit; text-decoration: inherit;">backend</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The unique path this backend should be mounted at. Must
not begin or end with a `/`. Defaults to `nomad`.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_global__python">
<a href="#state_global__python" style="color: inherit; text-decoration: inherit;">global_</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">bool</span>
    </dt>
    <dd>{{% md %}}Specifies if the generated token should be global. Defaults to 
false.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_policies_python">
<a href="#state_policies_python" style="color: inherit; text-decoration: inherit;">policies</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">Sequence[str]</span>
    </dt>
    <dd>{{% md %}}List of policies attached to the generated token. This setting is only used 
when `type` is 'client'.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_role_python">
<a href="#state_role_python" style="color: inherit; text-decoration: inherit;">role</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}The name to identify this role within the backend.
Must be unique within the backend.
{{% /md %}}</dd>
    <dt class="property-optional"
            title="Optional">
        <span id="state_type_python">
<a href="#state_type_python" style="color: inherit; text-decoration: inherit;">type</a>
</span>
        <span class="property-indicator"></span>
        <span class="property-type">str</span>
    </dt>
    <dd>{{% md %}}Specifies the type of token to create when using this role. Valid 
settings are 'client' and 'management'. Defaults to 'client'.
{{% /md %}}</dd>
</dl>
{{% /choosable %}}







<h2 id="package-details">Package Details</h2>
<dl class="package-details">
	<dt>Repository</dt>
	<dd><a href="https://github.com/pulumi/pulumi-vault">https://github.com/pulumi/pulumi-vault</a></dd>
	<dt>License</dt>
	<dd>Apache-2.0</dd>
	<dt>Notes</dt>
	<dd>This Pulumi package is based on the [`vault` Terraform Provider](https://github.com/hashicorp/terraform-provider-vault).</dd>
</dl>
