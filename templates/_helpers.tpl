
{{- define "metadata.labels" -}}
    app: {{ .Values.global.name }}
    app-id: {{ .Values.metadata.appId }}
    randoli.io/cost.group: {{ .Values.metadata.costGroup }}
    randoli.io/watch.id: {{ .Values.metadata.watchId }}
{{- end }}

{{- define "metadata.labels.test" -}}
    app: {{ .Values.global.name }}
    app-id: {{ .Values.metadata.appId }}
    randoli.io/cost.group: {{ .Values.metadata.costGroup }}
    randoli.io/watch.id: {{ .Values.metadata.watchId }}
{{- end }}

{{- define "metadata.annotations" -}}
    app: {{ .Values.global.name }}
    app-id: {{ .Values.metadata.appId }}
    randoli.io/cost.group: {{ .Values.metadata.costGroup }}
    randoli.io/watch.id: {{ .Values.metadata.watchId }}
{{- end }}

{{- define "spec.matchLabels" -}}
    app: {{ .Values.global.name }}
    app-id: {{ .Values.metadata.appId }}
    randoli.io/cost.group: {{ .Values.metadata.costGroup }}
    randoli.io/watch.id: {{ .Values.metadata.watchId }}
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
