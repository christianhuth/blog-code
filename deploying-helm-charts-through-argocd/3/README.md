# ArgoCD application pointing to a Helm Dependency in a Git repository

The upcoming approach is my personal favorite as it provides you the maximum of flexibility and reproducibility. Just as with the second approach, we point the ArgoCD application to a Git repository that contains a Helm Chart. Inside the Git repository, you have a stump Helm Chart definition, which only consists of a `Chart.yaml` and an (optional) values file - like `my-values.yaml` in the example. Inside the `Chart.yaml` you reference the Helm Chart you want to install by using Helm dependencies.
