style "service" {
  shape        = "rounded"
  fill         = "#F1F3F4"
  stroke       = "#5F6368"
  stroke_width = 1.5
  font_size    = 14
  padding      = 12
  min_w        = 120
  min_h        = 60
  max_w        = 180
}

style "resource" {
  font_size = 12
  min_w     = 100
  min_h     = 40
}

style "boundary" {
  shape       = "rect"
  fill        = "none"
  stroke      = "#5F6368"
  stroke_dash = [6, 4]
  font_size   = 12
  font_weight = 700
  padding     = 16
  min_w       = 200
  min_h       = 120
}

style "account" {
  fill        = "none"
  stroke      = "#E7157B"
  stroke_dash = []
}

style "auto-scaling-group" {
  fill        = "none"
  stroke      = "#ED7100"
  stroke_dash = [6, 4]
}

style "availability-zone" {
  fill        = "none"
  stroke      = "#00A4A6"
  stroke_dash = [6, 4]
}

style "cloud" {
  fill        = "none"
  stroke      = "#242F3E"
  stroke_dash = []
}

style "cloud-logo" {
  fill        = "none"
  stroke      = "#242F3E"
  stroke_dash = []
}

style "corporate-data-center" {
  fill        = "none"
  stroke      = "#7D8998"
  stroke_dash = []
}

style "ec2-instance-contents" {
  fill        = "none"
  stroke      = "#ED7100"
  stroke_dash = []
}

style "iot-greengrass-deployment" {
  fill        = "none"
  stroke      = "#7AA116"
  stroke_dash = []
}

style "private-subnet" {
  fill        = "none"
  stroke      = "#00A4A6"
  stroke_dash = []
}

style "public-subnet" {
  fill        = "none"
  stroke      = "#7AA116"
  stroke_dash = []
}

style "region" {
  fill        = "none"
  stroke      = "#00A4A6"
  stroke_dash = [6, 4]
}

style "security-group" {
  fill        = "none"
  stroke      = "#DD344C"
  stroke_dash = []
}

style "server-contents" {
  fill        = "none"
  stroke      = "#7D8998"
  stroke_dash = []
}

style "spot-fleet" {
  fill        = "none"
  stroke      = "#ED7100"
  stroke_dash = []
}

style "vpc" {
  fill        = "none"
  stroke      = "#8C4FFF"
  stroke_dash = []
}
