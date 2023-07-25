# ArgoCD application pointing to a Kustomize folder in a Git repository

All of the approaches so far have one big disadvantage in common. If the original author of a Helm Chart does not offer the option to configure specific settings, users will be unable to customize those options according to their needs. A solution to this problem comes with the last approach I want to explain, which uses Kustomize to render a Helm Chart.
