{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "labels.core" -}}
app: prometheus
component: prometheus-core
{{- end -}}

{{- define "labels.nodeExporter" -}}
app: prometheus
component: prometheus-node-exporter
{{- end -}}

{{- define "labels.blackboxExporter" -}}
app: prometheus
component: prometheus-blackbox-exporter
{{- end -}}

{{- define "labels.kubeStateMetrics" -}}
app: prometheus
component: kube-state-metrics
{{- end -}}