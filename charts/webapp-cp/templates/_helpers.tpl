{{- define "hostname" -}}
{{ .Values.WebApp.Name }}.{{ .Values.WebApp.BaseHost }}
{{- end -}}

{{- define "stripPrefixSuffix" -}}
{{- $name := .Values.WebApp.Name -}}

{{- if hasSuffix "-prod" $name -}}
  {{- $name = trimSuffix "-prod" $name -}}
{{- end -}}

{{- printf "%s.%s" $name .Values.WebApp.BaseHost -}}
{{- end -}}


{{- define "stripPrefixSuffixFromName" -}}
{{- $name := .Values.WebApp.Name -}}

{{- if hasSuffix "-prod" $name -}}
  {{- $name = trimSuffix "-prod" $name -}}
{{- end -}}

{{- printf "%s" $name  -}}
{{- end -}}