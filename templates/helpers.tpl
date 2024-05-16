
{{- define "metadata.labels" -}}
    {{- include "common.lables" | nindent 4 }}
{{- end }}

{{- define "metadata.annotations" -}}
    {{- include "common.lables" | nindent 4 }}
{{- end }}

{{- define "spec.matchLabels" -}}
    {{- include "common.lables" | nindent 4 }}
{{- end }}

{{- define "common.lables" -}}
    app: {{ .Values.global.name }}
    app-id: {{ .Values.metadata.appId }}
    randoli.io/cost.group: {{ .Values.metadata.costGroup }}
    randoli.io/watch.id: {{ .Values.metadata.watchId }}
{{- end }}

{{- define "spec.containers.volumeMounts" -}}
    - name: {{ .Values.spec.containers.volumeMounts.name }}
    mountPath: {{ .Values.spec.containers.volumeMounts.mountPath }}
    subPath: {{ .Values.spec.containers.volumeMounts.subPath }}
{{- end }}

{{- define "container.ports" -}}
- containerPort: 80
  name: http
{{- end }}

{{- define "spec.containers.livenessProbe" -}}
            httpGet:
                path: /
                port: 8080
                scheme: HTTP
{{- end }}
