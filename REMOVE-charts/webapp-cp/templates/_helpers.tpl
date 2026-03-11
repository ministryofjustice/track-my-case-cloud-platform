{{- define "hostname" -}}
{{ .Values.WebApp.Name }}.{{ .Values.WebApp.BaseHost }}
{{- end -}}

{{- define "stripPrefixSuffix" -}}
{{- $name := .Values.WebApp.Name -}}

{{- if hasPrefix "track-my-case-" $name -}}
  {{- $name = printf "track-a-case-%s" (trimPrefix "track-my-case-" $name) -}}
{{- end -}}

{{- if hasSuffix "-prod" $name -}}
  {{- $name = trimSuffix "-prod" $name -}}
{{- end -}}

{{- printf "%s.%s" $name .Values.WebApp.BaseHost -}}
{{- end -}}


{{- define "stripPrefixSuffixFromName" -}}
{{- $name := .Values.WebApp.Name -}}

{{- if hasPrefix "track-my-case-" $name -}}
  {{- $name = printf "track-a-case-%s" (trimPrefix "track-my-case-" $name) -}}
{{- end -}}

{{- if hasSuffix "-prod" $name -}}
  {{- $name = trimSuffix "-prod" $name -}}
{{- end -}}

{{- printf "%s" $name  -}}
{{- end -}}