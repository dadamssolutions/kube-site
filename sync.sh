#!/bin/sh
mkdir -p repo
cd repo
helm package ../charts/*
helm repo index .
