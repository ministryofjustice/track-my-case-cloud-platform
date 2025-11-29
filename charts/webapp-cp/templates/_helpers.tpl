{{- define "hostname" -}}
{{ .Values.WebApp.Name }}.{{ .Values.WebApp.BaseHost }}
{{- end -}}

{{- define "stripPrefixSuffix" -}}
{{ .Values.WebApp.Name | replace "data-platform-app-" "" | replace "-prod" "" }}.{{ .Values.WebApp.BaseHost }}
{{- end -}}

{{- define "stripPrefixSuffixFromName" -}}
{{ .Values.WebApp.Name | replace "data-platform-app-" "" | replace "-prod" "" }}
{{- end -}}