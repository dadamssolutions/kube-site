# Kube Site
Deploy a containerized website in Kubernetes with SSL.

### Prerequisites
1. A Kubernetes cluster with `cert-manager` and a `cluster-issuer` installed.
2. A `CNAME` record for the domain pointed to the Kubernetes cluster IP.

### Deploy
Once the prerequisites are setup, you can clone this repo and run the following command from the `charts/kube-site` directory:
```shell
helm -n <NAMESPACE> install <RELEASE_NAME> . --set domain=<YOUR_DOMAIN.COM> --set namespace=<NAMESPACE> --set image="<YOUR_WEBSITE_IMAGE:TAG>" --set clusterIssuerName=<CLUSTER_ISSUER_NAME>'
```
After a few minutes, the cluster issuer will secure a valid certificate, and your website will be available at the domain you provided!
