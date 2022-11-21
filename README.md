# Overview - Example using helm postrender with yq

Using `yq` command with the [Helm postrender feature](https://helm.sh/docs/topics/advanced/) to patch YAML rendered by HELM with merge strategy.

Demonstrating that you don't need the complexity of kustomize in order to modify your YAML before being applyed by HELM.
But just the portable CLI `yq`

# Prerequisites
- helm CLI 3.10.0 or above
- yq CLI 4.30.4 or above (https://github.com/mikefarah/yq/releases)


# Test it
- Check content of [test.sh](test.sh)
- Run it and validate it works
`bash test.sh`



# How we start

1. Scaffolding a helm chart `helm create my-chart`

2. Create the patch file [patch.yaml](patch.yaml) which includes some labels to be patched to all resources. If you want to select/filter resources by kind (for example), you may need to check [this example](https://stackoverflow.com/a/66451516)

3. Creating the [postrender script](postrender) which calls `yq` command

4. Writing the `test.sh` script which includes the testing command `helm template`. As per [helm docs](https://helm.sh/docs/topics/advanced/), you can use `--post-render` not only with `helm template` but also with `helm install` as well `helm upgrade`
