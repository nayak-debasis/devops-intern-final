job "hello-devops" {
  datacenters = ["dc1"]
  type = "service"

  group "example" {
    task "hello" {
      driver = "raw_exec"

      config {
        command = "powershell"
        args    = ["-Command", "Write-Output 'Hello from Nomad on Windows!'; Start-Sleep -Seconds 30"]
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
