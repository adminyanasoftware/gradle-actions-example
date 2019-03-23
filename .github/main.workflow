workflow "Push" {
  on = "push"
  resolves = [
    "Test Library OpenJDK 8",
    "Test Library OpenJDK 11",
    "Test Library OpenJDK 12"
  ]
}

action "Test Library OpenJDK 8" {
  uses = "MrRamych/gradle-actions/openjdk-8@2.0"
  args = "test --stacktrace"
}

action "Test Library OpenJDK 11" {
  uses = "MrRamych/gradle-actions/openjdk-11@2.0"
  args = "test --stacktrace"
}

action "Test Library OpenJDK 12" {
  uses = "MrRamych/gradle-actions/openjdk-12@openjdk-12"
  args = "test --stacktrace"
}
