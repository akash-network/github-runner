# GitHub Runner

Custom GitHub Actions self-hosted runner image based on [myoung34/github-runner](https://github.com/myoung34/docker-github-actions-runner) with npm pre-installed.

## Image

```
ghcr.io/akash-network/github-runner
```

### Available Tags

| Tag | Description |
|-----|-------------|
| `latest` | Latest build from main branch |
| `v1.0.0+YYYYMMDD` | Versioned release with build date |
| `v1.0.0` | Versioned release |
| `v1.0` | Minor version |
| `v1` | Major version |

## Included Tools

- All tools from the base `myoung34/github-runner:ubuntu-jammy` image
- npm

## Releases

To create a new versioned release:

```bash
git tag v1.0.0
git push origin v1.0.0
```

This triggers the build workflow which publishes:
- `v1.0.0+YYYYMMDD` (with build date metadata)
- `v1.0.0`
- `v1.0`
- `v1`

## Automatic Updates

The image is automatically rebuilt weekly (Sundays at midnight UTC) to incorporate upstream updates and security patches.
