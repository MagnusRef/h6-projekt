#!/bin/bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install metrics prometheus-community/prometheus --create-namespace -f dmz-prometheus-values.yaml
# DMZ prometheus
