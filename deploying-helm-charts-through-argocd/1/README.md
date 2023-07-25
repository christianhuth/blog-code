# ArgoCD application pointing at a Helm Chart in a Helm repository

The first approach is the most native and straightforward way of installing a Helm Chart. The ArgoCD application CRD provides attributes that can be used to directly point to a Helm repository (`repoURL`) and the desired Helm Chart and version (`chart` and `targetRevision`).
