# Load required libraries
library(survival)
library(survminer)
library(dplyr)
# Load the diabetic dataset
data('diabetic')
head(diabetic)

# Create age groups for analysis
diabetic <- diabetic %>% mutate(age_group = ifelse(age >= median(age), "old", "young"))
diabetic$age_group <- factor(diabetic$age_group)

# Kaplan-Meier method
surv_object <- Surv(time = diabetic$time, event = diabetic$status)
surv_object
fit1 <- survfit(surv_object ~ age_group, data = diabetic)
summary(fit1)

# Plot Kaplan-Meier survival curve
ggsurvplot(
  fit1,
  data = diabetic,
  conf.int = FALSE,
  pval = TRUE,
  risk.table = TRUE,
  legend.title = "Age Group",
  xlab = "Time",
  ylab = "Survival Probability",
  title = "Kaplan-Meier Survival Curve by Age Group",
  ggtheme = theme_minimal()
)

# Log-rank test
log_rank_test <- survdiff(Surv(time, status) ~ age_group, data = diabetic)
log_rank_test

# Cox Model
cox_model <- coxph(Surv(time, status) ~ age_group, data = diabetic)
cox_model
