# 1. تفعيل خدمات البناء والتشغيل
gcloud services enable run.googleapis.com cloudbuild.json

# 2. بناء الحاوية ونشرها مع إغلاق الدخول العام بالكامل
gcloud run deploy mr-joo-core \
  --source . \
  --platform managed \
  --region europe-west1 \
  --no-allow-unauthenticated \
  --set-env-vars "MR_JOO_ACCESS_PASSWORD=اختر_كلمة_مرور_سرية_قوية_جدا" \
  --set-env-vars "AI_PROVIDER=openai" \
  --set-env-vars "AI_API_KEY=مفتاح_الذكاء_الاصطناعي" \
  --memory 2Gi \
  --cpu 2