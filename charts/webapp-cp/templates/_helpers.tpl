{{- define "hostname" -}}
{{ .Values.WebApp.Name }}.{{ .Values.WebApp.BaseHost }}
{{- end -}}

{{- define "stripPrefixSuffix" -}}
{{- $name := .Values.WebApp.Name -}}

{{- if hasSuffix "-prod" $name -}}
  {{- $name = trimSuffix "-prod" $name -}}
{{- else }}
  {{- if hasPrefix "track-my-case-" $name -}}
    {{- $name = printf "track-a-case-%s" (trimPrefix "track-my-case-" $name) -}}
  {{- end -}}
{{- end -}}

{{- printf "%s.%s" $name .Values.WebApp.BaseHost -}}
{{- end -}}


{{- define "stripPrefixSuffixFromName" -}}
{{- $name := .Values.WebApp.Name -}}

{{- if hasSuffix "-prod" $name -}}
  {{- $name = trimSuffix "-prod" $name -}}
{{- else }}
  {{- if hasPrefix "track-my-case-" $name -}}
    {{- $name = printf "track-a-case-%s" (trimPrefix "track-my-case-" $name) -}}
  {{- end -}}
{{- end -}}

{{- printf "%s" $name  -}}
{{- end -}}