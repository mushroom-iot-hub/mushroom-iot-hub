{*
 Copyright 2023 UMH Systems GmbH

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
*}

{{/*
Expand the name of the chart.
*/}}
{{- define "mushroom-iot-hub.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "mushroom-iot-hub.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Release.Name .Values.nameOverride }}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mushroom-iot-hub.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "mushroom-iot-hub.labels.common" -}}
app.kubernetes.io/instance: {{ .Release.Name }}
helm.sh/chart: {{ include "mushroom-iot-hub.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: {{ include "mushroom-iot-hub.name" . }}
{{- end }}

{{/*
Labels for barcodereader
*/}}
{{- define "mushroom-iot-hub.labels.barcodereader" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-barcodereader
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for mqtt-bridge
*/}}
{{- define "mushroom-iot-hub.labels.mqttbridge" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-mqttbridge
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for factoryinsight
*/}}
{{- define "mushroom-iot-hub.labels.factoryinsight" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-factoryinsight
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for mqtttopostgresql
*/}}
{{- define "mushroom-iot-hub.labels.mqtttopostgresql" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-mqtttopostgresql
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for mqtttoblob
*/}}
{{- define "mushroom-iot-hub.labels.mqtttoblob" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-mqtttoblob
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for nodered
*/}}
{{- define "mushroom-iot-hub.labels.nodered" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-nodered
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for redis
*/}}
{{- define "mushroom-iot-hub.labels.redis" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-redis
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for timescaledb
*/}}
{{- define "mushroom-iot-hub.labels.timescaledb" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-timescaledb
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for packmlmqttsimulator
*/}}
{{- define "mushroom-iot-hub.labels.packmlmqttsimulator" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-packmlmqttsimulator
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}


{{/*
Labels for grafanaproxy
*/}}
{{- define "mushroom-iot-hub.labels.grafanaproxy" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-grafanaproxy
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}


{{/*
Labels for factoryinput
*/}}
{{- define "mushroom-iot-hub.labels.factoryinput" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-factoryinput
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for kafkatoblob
*/}}
{{- define "mushroom-iot-hub.labels.kafkatoblob" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-kafkatoblob
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for mqttkafkabridge
*/}}
{{- define "mushroom-iot-hub.labels.mqttkafkabridge" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-mqttkafkabridge
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}


{{/*
Labels for sensorconnect
*/}}
{{- define "mushroom-iot-hub.labels.sensorconnect" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-sensorconnect
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for cameraconnect
*/}}
{{- define "mushroom-iot-hub.labels.cameraconnect" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-cameraconnect
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for iotsensorsmqtt
*/}}
{{- define "mushroom-iot-hub.labels.iotsensorsmqtt" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-iotsensorsmqtt
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}


{{/*
Labels for opcuasimulator
*/}}
{{- define "mushroom-iot-hub.labels.opcuasimulator" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-opcuasimulator
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for hivemqce
*/}}
{{- define "mushroom-iot-hub.labels.hivemqce" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-hivemqce
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for emqxedge
*/}}
{{- define "mushroom-iot-hub.labels.emqxedge" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-emqxedge
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}


{{/*
Labels for kafkatopostgresql
*/}}
{{- define "mushroom-iot-hub.labels.kafkatopostgresql" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-kafkatopostgresql
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for kafkastatedetector
*/}}
{{- define "mushroom-iot-hub.labels.kafkastatedetector" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-kafkastatedetector
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for kafkabridge
*/}}
{{- define "mushroom-iot-hub.labels.kafkabridge" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-kafkabridge
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for kafkadebug
*/}}
{{- define "mushroom-iot-hub.labels.kafkadebug" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-kafkadebug
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for kafkainit
*/}}
{{- define "mushroom-iot-hub.labels.kafkainit" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-kafkainit
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for kafka
*/}}
{{- define "mushroom-iot-hub.labels.kafka" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-kafka
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for kowl
*/}}
{{- define "mushroom-iot-hub.labels.kowl" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-kowl
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for tulip-connector
*/}}
{{- define "mushroom-iot-hub.labels.tulip-connector" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-tulip-connector
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Labels for metrics
*/}}
{{- define "mushroom-iot-hub.labels.metrics-cron" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-metrics-cron
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{- define "mushroom-iot-hub.labels.metrics-install" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-metrics-install
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{- define "mushroom-iot-hub.labels.metrics-upgrade" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-metrics-upgrade
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{- define "mushroom-iot-hub.labels.metrics-delete" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-metrics-delete
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{- define "mushroom-iot-hub.labels.metrics-rollback" -}}
app.kubernetes.io/name: {{ include "mushroom-iot-hub.name" . }}-metrics-rollback
{{ include "mushroom-iot-hub.labels.common" . }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "mushroom-iot-hub.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "mushroom-iot-hub.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
