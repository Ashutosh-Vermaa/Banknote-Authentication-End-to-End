From python:3.7 
#or From continuumio/anaconda3:4.4.0 (this is probably anaconda version)
RUN mkdir /app
COPY . /app 
# EXPOSE 5000
WORKDIR /app
RUN pip install -r requirements.txt

CMD python Streamlit_app.py
#the above command will run the app1.py file which contains all the code

# ENTRYPOINT [ "streamlit", "run" ] 
# #it makes the image execuatble
# CMD ["streamlit_app.py"]
#instead of the above two commands we can write- CMD streamlit run streamlit_app.py
