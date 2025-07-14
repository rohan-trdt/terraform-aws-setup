# terraform-aws-setup
# 🌩️ Secure & Scalable AWS Cloud Setup with Terraform

This project builds a **three-tier AWS infrastructure** using **Terraform**. It's designed to be modular, scalable, and production-ready — a great DevOps portfolio project.

---

## 🚀 Architecture Overview

![Architecture Diagram](./A_diagram_in_the_image_depicts_a_three-tier_cloud_.png)

### Components:
- **VPC with public & private subnets**
- **EC2 instance in the public subnet**
- **Internet Gateway + Security Groups**
- **Route Tables**
- **SSH access with key pairs**
- *(Coming soon: RDS in private subnet + NAT Gateway + Bastion)*

---

## 📦 Technologies Used

| Tool        | Purpose                         |
|-------------|----------------------------------|
| Terraform   | Infrastructure as Code (IaC)     |
| AWS EC2     | Virtual machine instances        |
| AWS VPC     | Virtual private networking       |
| Git & GitHub| Version control & repo hosting   |

---

## 📁 File Structure

terraform-aws-setup/
│
├── ec2.tf # EC2 + Key Pair
├── vpc.tf # VPC, Subnets, Routes
├── variables.tf # Input variables
├── outputs.tf # Output values
├── security.tf # Security groups
├── provider.tf # AWS provider setup
├── .gitignore # Terraform cache ignored
└── README.md # Project documentation


---

## 🧑‍💻 How to Use

1. ✅ Clone the repo  
2. 🔐 Configure your `~/.aws/credentials`  
3. 🗝️ Ensure your SSH key is correctly set in `ec2.tf`  
4. 🌱 Run:
```bash
terraform init
terraform plan
terraform apply


🎯 What's Next
 Add RDS instance in private subnet

 Setup NAT Gateway for internet access

 Add Bastion Host for secure access

 Deploy containerized app via ECS (future scope)

🧠 Author
👨‍💻 Rohan Mandal
🛠️ DevOps & Cloud Enthusiast
📍 Kolkata, India
🌐 GitHub

📜 License
MIT License. Feel free to use or modify.
