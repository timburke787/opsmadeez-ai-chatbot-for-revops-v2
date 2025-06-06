# CRM AI Assistant

A Streamlit application that helps analyze CRM data and provides insights about buying groups and buyer's journey.

## Local Development Setup

1. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows, use: venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Create a `.env` file in the root directory with your OpenAI API key:
```
OPENAI_API_KEY=your_api_key_here
```

4. Run the application locally:
```bash
streamlit run app.py
```

## Data Structure

The application expects the following CSV files in the `data/` directory:
- contacts.csv
- accounts.csv
- deals.csv
- sales_activities.csv
- marketing_touchpoints.csv
- contact_funnel_history.csv
- deal_funnel_history.csv
- contact_deal_roles.csv
- buying_group_definitions.csv

## Deployment Options

### 1. Streamlit Cloud (Recommended)
1. Push your code to a GitHub repository
2. Go to [share.streamlit.io](https://share.streamlit.io)
3. Connect your GitHub repository
4. Set up your environment variables (OPENAI_API_KEY)
5. Deploy!

### 2. Heroku
1. Create a `Procfile`:
```
web: streamlit run app.py
```

2. Create a `runtime.txt`:
```
python-3.9.18
```

3. Deploy to Heroku:
```bash
heroku create your-app-name
git push heroku main
```

### 3. Docker
1. Create a Dockerfile:
```dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
```

2. Build and run:
```bash
docker build -t crm-ai-assistant .
docker run -p 8501:8501 crm-ai-assistant
```

## Testing

1. Local Testing:
   - Run the application locally using `streamlit run app.py`
   - Test with sample questions about your CRM data
   - Verify that the AI responses include both sales activities and marketing touchpoints

2. Data Validation:
   - Ensure all required CSV files are present in the data directory
   - Verify that the column names match the expected format
   - Test with different opportunity names to ensure proper matching

## Security Notes

- Never commit your `.env` file or expose your OpenAI API key
- Consider implementing authentication for production deployments
- Review and sanitize any data before displaying it in the application

