# Batch converter

This is a small quality of life converter for Sonoff RF Bridge.

It's built upon https://tasmota.github.io/docs/devices/Sonoff-RF-Bridge-433/#sending-commands-with-portisch-firmware
and https://github.com/henfri/bitbuckedconverter/blob/master/BitBucketConverter

But with some quality of life additions so it's faster to convert codes.


## Useful refference:

https://tasmota.github.io/docs/Commands/#rf-bridge

## To send those commands with HASS:

```
alias: RfSend-Aon-10101
description: ""
sequence:
  - service: mqtt.publish
    data:
      topic: cmnd/<TOPIC>/Backlog
      payload_template: >-
        RfRaw
        AAB0210304013603AC26208281818190818181908181818181908190819081908181819055;
        RfRaw 0
mode: single

```
