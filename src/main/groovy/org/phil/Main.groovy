package org.phil

import org.phil.version.Version

class Main {
  static void main(String[] args) {
    Version version = new Version()
    println(version.get())
    println("Hello World!")
  }
}