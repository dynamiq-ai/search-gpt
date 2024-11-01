# Search-GPT by Dynamiq: A Scalable AI-Powered Search Application

Search-GPT is an advanced AI-powered search application designed to process and refine search queries, retrieve accurate and relevant information from the web, and present well-structured answers with source citations. It uses the `Dynamiq` framework to integrate and manage workflow steps, each enhancing the query process. This repository includes two backend implementations: a code-based solution (`server_via_dynamiq.py`) and a dynamic workflow-driven backend (`server.py`) with a Streamlit-based user interface (`app.py`).

## Table of Contents

1. [Overview](#overview)
2. [Features](#features)
3. [Setup](#setup)
4. [Configuration](#configuration)
5. [Usage](#usage)
6. [Project Structure](#project-structure)
7. [How It Works](#how-it-works)
8. [Contributing](#contributing)
9. [License](#license)

## Overview

The Search-GPT application processes user queries in three stages:
1. **Rephrase:** Refines the query to improve search relevance.
2. **Search:** Retrieves relevant results from the web.
3. **Answer:** Synthesizes information from search results, providing a concise answer with source citations.

With two server implementations, Search-GPT gives flexibility in how queries are processed, allowing users to choose between:
- A streamlined, code-based backend (`server_via_dynamiq.py`)
- A workflow-oriented backend that utilizes `Dynamiq` nodes (`server.py`)

The frontend is built with Streamlit, making the application user-friendly and accessible through a web browser.

## Features

- **Dynamic Query Rephrasing:** Improves search relevance by rewriting queries for clarity and precision.
- **SERP Integration:** Fetches search results from Scale SERP, delivering relevant, real-time data.
- **Answer Synthesis with Citations:** Synthesizes responses from multiple sources, formatted with citations.
- **Modular Workflow:** Each query step is managed by individual `Dynamiq` nodes for flexibility.
- **Real-Time Streaming:** Streams answers chunk-by-chunk for a responsive user experience.
- **User-Friendly Interface:** Uses Streamlit for a simple, interactive user experience.

## Setup

### Requirements

- Python 3.10+
- Pipenv or virtualenv for dependency management
- API keys for Dynamiq and Scale SERP

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/search-gpt.git
   cd search-gpt
   ```

2. Set up environment variables for `Dynamiq` and `Scale SERP`. Add these to a `.env` file in the root directory:
   ```bash
   DYNAMIQ_ENDPOINT=your_dynamiq_endpoint
   DYNAMIQ_API_KEY=your_dynamiq_api_key
   SERP_API_KEY_DYN=your_scale_serp_api_key
   ```

3. Run the application:
   ```bash
   bash run.sh
   ```

The application will open a Streamlit app in your browser at `http://localhost:8501`.

## Configuration

Make sure your `.env` file contains:
- `DYNAMIQ_ENDPOINT`: The endpoint for the Dynamiq API.
- `DYNAMIQ_API_KEY`: API key for the Dynamiq platform.
- `SERP_API_KEY`: API key for Scale SERP to fetch search results.

The application will read these variables to authenticate and connect to the necessary external services.

## Usage

1. **Enter a query** in the text input field.
2. **Click "Submit"** to process the query.
3. The application displays the results in real-time, showing sources first and then streaming the final answer.

To start a new query session, use the **"Start New Query"** button, which resets the conversation history.

## Project Structure

- **`server_via_dynamiq.py`**: A simple server script that manages workflows for rephrasing, searching, and answering queries.
- **`server.py`**: A more sophisticated Dynamiq-based implementation with defined agents, transformers, and tools for query processing.
- **`app.py`**: The Streamlit frontend to interact with users and manage query processing.
- **`run.sh`**: A shell script to launch the Streamlit app.

## How It Works

The application operates as follows:

1. **Frontend (Streamlit)**:
   - Users enter queries, which are managed in `app.py`.
   - `app.py` sends each query to the backend for processing, chunking the results for real-time display.

2. **Backend (Dynamiq-based Workflow)**:
   - **Query Rephrasing**: The query is simplified and optimized to improve search accuracy.
   - **Search**: Using the Scale SERP tool, relevant web content is retrieved.
   - **Answer Synthesis**: Search results are synthesized, with answers formatted alongside numbered source links.

3. **Streaming Responses**:
   - Both `server_via_dynamiq.py` and `server.py` yield chunks of data to simulate real-time streaming, enhancing user experience.
