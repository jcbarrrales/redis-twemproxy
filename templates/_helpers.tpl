{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name  | trunc 24 | trimSuffix "-" }}
{{- end -}}

{{- define "twemproxy" -}}
{{- printf "%s-twem%s" .Release.Name .Chart.Name  | trunc 24 | trimSuffix "-" }}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- printf "redis-twem%s" .Chart.Name | trunc 24 | trimSuffix "-" -}}
{{- end -}}
