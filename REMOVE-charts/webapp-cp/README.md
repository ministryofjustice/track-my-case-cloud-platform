# webapp Helm Chart

Helm chart to deploy a web app with an auth proxy in front of it.
This can be a static app or a shiny app.

[Shiny](https://shiny.rstudio.com) is a web application framework for R.


## Installing the Chart

To install the chart:

```bash
$ helm install --upgrade --namespace CLOUD-PLATFORM-NAMESPACE APPNAME charts/webapp-cp
```

The instance will be available in <https://APPNAME.apps.live.cloud-platform.service.justice.gov.uk>.

**NOTE**: Change the `values.yaml` file according to your app configuration


## Configuration

Listing only the required params here.

| Parameter  | Description     | Default |
| ---------- | --------------- | ------- |
| `AuthProxy.Env.AuthenticationRequired` | Determine if the app requires authentication | `"true"` |
| `AuthProxy.Env.IPRanges` | Comma (,) separated list of CIDR IP ranges. When not provided the user IP is not checked. | `""` |
| `AuthProxy.Env.Auth0Domain` | The Auth0 domain for your application | `""` |
| `WebApp.Name` (required) | Application name. This will be part of the app URL | |
| `WebApp.Image.Repository` (required) | Docker image for the app | |
| `WebApp.Image.Tag` | Tag to use for the docker repository | `latest` |
