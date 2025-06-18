
---

# **AWS Identity and Access Management (IAM) Mini Project**

**Project Duration:** 2 Hours  
**Project Title:** Securing AWS Resources Using IAM: Users, Groups, Policies, and Roles  
**Company Scenario:** GatoGrowFast.com – A Growth Marketing Consultancy

---

## **Introduction**

In this project, I explored **AWS Identity and Access Management (IAM)**, which is a foundational service in AWS used to manage access securely. I learned how to create and manage users, groups, roles, and policies to control who can access what within an AWS environment.

Before diving into IAM, I ensured I had a good understanding of cloud computing basics, which provided a solid foundation for this project.

---

## **Project Goals**

- Understand IAM concepts and components (users, groups, roles, policies).
- Learn how to define permissions through policies.
- Apply IAM features to manage access control securely.
- Implement IAM best practices in a real-world simulation.

---

## **Learning Outcomes**

By completing this project, I was able to:

- Identify and differentiate IAM components.
- Create IAM users, roles, and groups.
- Attach and manage IAM policies effectively.
- Understand and apply best practices for IAM implementation.

---

## **Key IAM Concepts**

### What is IAM?
IAM stands for **Identity and Access Management**. It is AWS’s service that allows administrators to control who is authenticated (signed in) and authorized (has permissions) to use AWS resources.

### What is an IAM User?
An IAM user represents a single person or service that interacts with AWS resources using a unique username and credentials.

### What is an IAM Role?
An IAM role is a set of permissions that can be assumed temporarily by users, services, or applications. Roles are typically used for granting temporary access.

### What is an IAM Policy?
A policy is a JSON document that defines permissions. Policies can be attached to users, groups, or roles to control access to AWS services and resources.

### What is an IAM Group?
A group is a collection of IAM users. Permissions assigned to the group are inherited by all users in the group. It simplifies permission management.

---

## **Best Practices Followed**

- Granted **least privilege** – only permissions needed were given.
- Used **roles** for temporary and flexible access.
- Applied **Multi-Factor Authentication (MFA)** for additional security.
- Created **customer-managed policies** for flexibility and control.
- Used **descriptive names** for easy policy/group management.
- Enforced **strong password policy** for IAM users.
- Documented and reviewed all changes.

---

## **Practical Steps**

### ✅ **Part 1: Creating an IAM User with EC2 Access**

1. **Navigated to AWS IAM Console.**
2. Selected **Policies** > Searched for **EC2** > Chose **AmazonEC2FullAccess** > Clicked **Create Policy**.
3. Selected **All EC2 Actions** and **All Resources** > Clicked **Next** and then **Create Policy**.
4. Created an IAM user named **Eric**:
   - Provided access to AWS Console.
   - Assigned a custom password.
   - Enforced password reset at first sign-in.
   - Attached the custom EC2 policy (**policy_for_eric**) directly to Eric.
5. Saved Eric’s login credentials securely.

### ✅ **Part 2: Creating a Group and Assigning Users**

1. **Created an IAM Group** named **Development-Team**.
2. Created two users: **Jack** and **Ade**.
3. Added both Jack and Ade to the **Development-Team** group during creation.
4. Created a new policy (**development-policy**) that allows **full access to EC2 and S3**.
5. Attached the **development-policy** to the **Development-Team** group.
6. Confirmed that users in the group inherited the appropriate permissions.

---

## **Results and Observations**

| IAM User | Group | Services Access | Access Type |
|----------|--------|------------------|--------------|
| Eric     | None   | EC2              | User-Direct |
| Jack     | Development-Team | EC2, S3        | Group-Policy |
| Ade      | Development-Team | EC2, S3        | Group-Policy |

---

## **Project Reflection**

This project offered hands-on experience with AWS IAM, reinforcing both conceptual and practical understanding. I learned how IAM helps enforce **security best practices** by restricting access, defining permissions clearly, and simplifying user management.

Key takeaways:
- IAM is essential for managing access securely in cloud environments.
- Policies are powerful tools to define what users and roles can do.
- IAM groups significantly reduce administrative effort when managing large teams.
- Security practices like **least privilege**, **MFA**, and **policy separation** are critical for maintaining a secure AWS environment.

---

## **Conclusion**

The IAM mini project effectively demonstrated how AWS helps organizations control access to resources through users, groups, roles, and policies. By simulating a real company scenario, I practiced implementing best practices in a secure and structured way.

This exercise not only strengthened my AWS knowledge but also prepared me to manage access control in real-world cloud projects.

---

