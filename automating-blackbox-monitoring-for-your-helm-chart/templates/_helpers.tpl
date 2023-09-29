{{/*
Expand the name of the chart.
*/}}
{{- define "automating-blackbox-monitoring-for-your-helm-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "automating-blackbox-monitoring-for-your-helm-chart.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "automating-blackbox-monitoring-for-your-helm-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "automating-blackbox-monitoring-for-your-helm-chart.labels" -}}
helm.sh/chart: {{ include "automating-blackbox-monitoring-for-your-helm-chart.chart" . }}
{{ include "automating-blackbox-monitoring-for-your-helm-chart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "automating-blackbox-monitoring-for-your-helm-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "automating-blackbox-monitoring-for-your-helm-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
