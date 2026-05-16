{{- define "fixora-demo-chart.fullname" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "fixora-demo-chart.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
{{- end -}}

{{- define "fixora-demo-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
{{- end -}}
