# ArgoCD Application Actions

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

This action will sync ArgoCD application.

## Usage

### Example workflow

This example replaces syncs ArgoCD application.

```yaml
name: My Workflow
on: [ push, pull_request ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Sync ArgoCD Application
        uses: nholuongut/argocd-actions@v1
        with:
          address: "vault.example.com"
          token: ${{ secrets.ARGOCD_TOKEN }}
          action: sync
          appName: "my-example-app"
```

### Inputs

| Input | Description|
| --- | --- |
| `address` | ArgoCD server address. |
| `token` | ArgoCD Token. |
| `appName` | Application name to sync. |

## Examples

### Sync Application

You can sync ArgoCD application after building an image etc.

```yaml
name: My Workflow
on: [ push, pull_request ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Sync ArgoCD Application
        uses: nholuongut/argocd-actions@master
        with:
          address: "vault.example.com"
          token: ${{ secrets.ARGOCD_TOKEN }}
          appName: "my-example-app"
```

## Publishing

To publish a new version of this Action we need to update the Docker image tag in `action.yml` and also create a new
release on GitHub.

- Work out the next tag version number.
- Update the Docker image in `action.yml`.
- Create a new release on GitHub with the same tag.

# 🚀 I'm are always open to your feedback.  Please contact as bellow information:
### [Contact ]
* [Name: nho Luong]
* [Skype](luongutnho_skype)
* [Github](https://github.com/nholuongut/)
* [Linkedin](https://www.linkedin.com/in/nholuong/)
* [Email Address](luongutnho@hotmail.com)
* [PayPal.me](https://www.paypal.com/paypalme/nholuongut)

![](https://i.imgur.com/waxVImv.png)
![](Donate.png)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/nholuong)

# License
* Nho Luong (c). All Rights Reserved.🌟