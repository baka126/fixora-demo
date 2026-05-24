# Fixora Demo Scenarios

This repository contains sample Kubernetes manifests to demonstrate Fixora's AI-powered diagnostic and auto-fix capabilities.

## 🚀 Getting Started

Apply any of the manifests below to your cluster. Ensure Fixora is running in your cluster and configured to monitor the `default` namespace.

## 🛠️ Auto-Fix Scenarios

### 1. Image Pull Backoff (`deployment-imagepull.yaml`)
*   **Scenario:** A deployment with a typo in the image tag.
*   **Fix:** Fixora identifies the typo and suggests a PR with the correct, pinned image tag.

### 2. OOMKilled (`deployment-oomkilled.yaml`)
*   **Scenario:** A memory-intensive application hitting low limits.
*   **Fix:** Fixora detects the OOM event and opens a PR to increase memory limits based on usage.

### 3. Right-Sizing (`deployment-right-sizing.yaml`)
*   **Scenario:** An application requesting 4Gi of memory but only using a few MiB.
*   **Fix:** Fixora's background scanner detects the over-provisioning and suggests a cost-saving "down-size" PR.

### 4. Security Hardening (`deployment-security.yaml`)
*   **Scenario:** A Pod with a read-only root filesystem failing to write to `/var/cache`.
*   **Fix:** Fixora detects the "Permission Denied" error and suggests mounting a scoped `emptyDir` volume at the specific path.

### 5. Health Probe Correction (`deployment-probe.yaml`)
*   **Scenario:** An application listening on port 8080, but the readiness probe is configured for port 80.
*   **Fix:** Fixora infers the correct listener from logs and proposes a PR to align the health probes.

### 6. Dependency Environment Fix (`deployment-dependency.yaml`)
*   **Scenario:** An application failing to connect to a database due to incorrect environment variables.
*   **Fix:** Fixora discovers the `postgres-svc` in the namespace and suggests updating `DB_HOST` and `DB_PORT`.

## 📦 Helm Scenarios

Explore the `helm-scenario` folder for examples using Fixora's recursive discovery to fix issues directly in Helm chart values.
