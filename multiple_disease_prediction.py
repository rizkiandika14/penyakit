# -*- coding: utf-8 -*-
"""
Created on Tue Feb 14 15:16:08 2023

@author: hp
"""

import pickle
import streamlit as st
import pandas as pd
from streamlit_option_menu import option_menu

import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="penyakit"
    )

#load model ('rb' reading byte)
gerd_model = pickle.load(open('model/gerd_model.sav', 'rb'))

laktosa_model = pickle.load(open('model/laktosa_model.sav', 'rb'))

usbun_model = pickle.load(open('model/usbuntuDT_model.sav', 'rb'))

wasir_model = pickle.load(open('model/wasirDT_model.sav', 'rb'))

empedu_model = pickle.load(open('model/empedu_model.sav', 'rb'))

#sidebar
with st.sidebar:
    selected = option_menu("Diagnosa Gangguan Sistem Pencernaan",
                           ["Diagnosa GERD",
                            "Diagnosa Laktosa Intoleran",
                            "Diagnosa Usus Buntu",
                            "Diagnosa Wasir",
                            "Diagnosa Batu Empedu",
                            "Informasi Penyakit"],
                           default_index = 0)
    
# prediction GERD
if (selected == "Diagnosa GERD"):
    #page titile
    st.title("Diagnosa Gastroesophageal reflux disease (GERD)")
    st.subheader("1 = Ya & 0 = Tidak")
    
    sakit_dada = st.number_input("Mengalami sakit pada sekitar dada dan ulu hati?")
    muntah = st.number_input("Mengalami muntah?")
    disfagia = st.number_input("Mengalami disfagia (kesulitan menelan)?")
    mulut_pahit = st.number_input("Mengalami mulut terasa pahit?")
    bau_mulut = st.number_input("Mengalami bau mulut?")
    hamil = st.number_input("Sedang hamil?")
    merokok = st.number_input("Merokok?")
    karies = st.number_input("Memiliki karies gigi?")
    serak = st.number_input("Mengalami serak tenggorokan?")
    batuk = st.number_input("Mengalami batuk?")
    sesak_nafas = st.number_input("Mengalami sesak nafas?")
    obesitas = st.number_input("Kelebihan berat badan (obesitas)?")
    
    #code untuk Diagnosa
    gerd_diagnosis = ""
    
    #button
    if st.button("Hasil Diagnosa"):
        gerd_prediction = gerd_model.predict([[sakit_dada,muntah,disfagia,mulut_pahit,bau_mulut,hamil,merokok,karies,serak,batuk,sesak_nafas,obesitas]])
        
        if (gerd_prediction [0]== 0):
            gerd_diagnosis = 'Anda tidak memiliki gejala GERD'
        else:
            gerd_diagnosis = 'Anda memiliki gejala GERD'
    
    st.success(gerd_diagnosis)
    
# HERNIA ############################################

#if (selected == "Prediksi Hiatal Hernia"):
#    st.title("Prediksi Hiatal Hernia")
#    st.subheader("1 = Ya & 0 = Tidak")
    
    
#    Heartburn = st.number_input("Merasakan Heartburn?")
#    Sakit_dada_perut = st.number_input("Sakit pada dada atau perut?")
#    Sulit_menelan = st.number_input("Kesulitan menelan?")
#    Sulit_bernapas = st.number_input("Kesulitan bernafas?")
#    Acid_reflux = st.number_input("Mengalami acid reflux?")
#    Muntah_darah = st.number_input("Mengalami muntah darah?")
#    Tinja_gelap = st.number_input("Tinja berwarna gelap?")
#    Palpitasi = st.number_input("Mengalami palpitasi?")
    
    
    #code untuk prediksi
#    hernia_diagnosis = ""
    
#    #button
#    if st.button("Hasil prediksi"):
#        hernia_prediction = hernia_model.predict([[Heartburn,Sakit_dada_perut,Sulit_menelan,Sulit_bernapas,Acid_reflux,Muntah_darah,Tinja_gelap,Palpitasi]])
        
#        if (hernia_prediction [0]== 0):
#            hernia_diagnosis = 'Anda tidak memiliki gejala Hiatal Hernia'
#        else:
#            hernia_diagnosis = 'Anda memiliki gejala Hiatal Hernia'
    
#    st.success(hernia_diagnosis)

######### LAKTOSA ########################
    
if (selected == "Diagnosa Laktosa Intoleran"):
    #page titile
    st.title("Diagnosa Laktosa Intoleran")
    st.subheader("1 = Ya & 0 = Tidak")						
    
    diare = st.number_input("Mengalami diare setelah mengonsumsi produk olahan susu?")
    mual_muntah = st.number_input("Mengalami mual atau muntah setelah mengonsumsi produk olahan susu?")
    sakit_perut = st.number_input("Mengalami sakit perut setelah mengonsumsi produk olahan susu?")
    kembung = st.number_input("Mengalami kembung setelah mengonsumsi produk olahan susu?")
    perut_keroncongan = st.number_input("Mengalami perut keroncongan (bunyi) setelah mengonsumsi produk olahan susu?")
    sembelit = st.number_input("Mengalami sembelit setelah mengonsumsi produk olahan susu?")
    kentut_sendawa = st.number_input("Mengalami kentut atau sendawa tidak biasanya setelah mengonsumsi produk olahan susu?")
    
    
    #code untuk Diagnosa
    laktosa_diagnosis = ""
    
    #button
    if st.button("Hasil Diagnosa"):
        laktosa_prediction = laktosa_model.predict([[diare,mual_muntah,sakit_perut,kembung,perut_keroncongan,sembelit,kentut_sendawa]])
        
        if (laktosa_prediction [0]== 0):
            laktosa_diagnosis = 'Anda tidak memiliki gejala Laktosa Intoleran'
        else:
            laktosa_diagnosis = 'Anda memiliki gejala Laktosa Intoleran'
    
    st.success(laktosa_diagnosis)


# USUS BUNTU ##################################

if (selected == "Diagnosa Usus Buntu"):
    #page titile
    st.title("Diagnosa Usus Buntu")
    st.subheader("1 = Ya & 0 = Tidak") 						
    
    nyeri_perut = st.number_input("Mengalami sakit nyeri perut sebelah kanan?")
    mual_muntah = st.number_input("Mengalami mual atau muntah?")
    kehilangan_nafsu_makan = st.number_input("Mengalami kehilangan nafsu makan?")
    demam = st.number_input("Mengalami demam?")
    konstipasi_atau_diare = st.number_input("Mengalami konstipasi atau diare?")
    perut_kembung = st.number_input("Mengalami perut kembung?")
    darah_feses = st.number_input("Mengalami darah pada feses?")
    
    
    #code untuk Diagnosa
    usbuntu_diagnosis = ""
    
    #button
    if st.button("Hasil Diagnosa"):
        usbuntu_prediction = usbun_model.predict([[nyeri_perut,mual_muntah,kehilangan_nafsu_makan,demam,konstipasi_atau_diare,perut_kembung,darah_feses]])
        
        if (usbuntu_prediction [0]== 0):
            usbuntu_diagnosis = 'Anda tidak memiliki gejala Usus Buntu'
        else:
            usbuntu_diagnosis = 'Anda memiliki gejala Usus Buntu'
    
    st.success(usbuntu_diagnosis)
    
# WASIR ####################################################################
if (selected == "Diagnosa Wasir"):
    #page titile
    st.title("Diagnosa Wasir")
    st.subheader("1 = Ya & 0 = Tidak")
    
    
    feses_muntah_darah = st.number_input("Mengalami muntah darah atau darah pada feses?")
    gatal_sakit_anus = st.number_input("Mengalami sakit atau gatal pada anus?")
    benjolan_anus = st.number_input("Mengalami benjolan pada anus?")
    lendir_BAB = st.number_input("Mengalami BAB yang berlendir?")
    nyeri_anus = st.number_input("Mengalami nyeri saat BAB?")
    
    
    #code untuk Diagnosa
    wasir_diagnosis = ""
    
    #button
    if st.button("Hasil Diagnosa"):
        wasir_prediction = wasir_model.predict([[feses_muntah_darah,gatal_sakit_anus,benjolan_anus,lendir_BAB,nyeri_anus]])
        
        if (wasir_prediction [0]== 0):
            wasir_diagnosis = 'Anda tidak memiliki gejala Laktosa Intoleran'
        else:
            wasir_diagnosis = 'Anda memiliki gejala Wasir'
    
    st.success(wasir_diagnosis)
    
# BATU EMPEDU ##################################################
if (selected == "Diagnosa Batu Empedu"):
    #page titile
    st.title("Diagnosa Batu Empedu")
    st.subheader("1 = Ya & 0 = Tidak")
    
    
    jaundice = st.number_input("Mengami jaundice (kuning) pada mata atau kulit?")
    demam = st.number_input("Mengalami demam?")
    nyeri_perut_punggung = st.number_input("Mengalami nyeri perut yang menusuk terasa hingga punggung?")
    mual_muntah = st.number_input("Mengalami mual dan muntah?")
    urine_keruh = st.number_input("Mengalami urine berwarna keruh atau kecoklatan?")
    
    
    #code untuk Diagnosa
    empedu_diagnosis = ""
    
    #button
    if st.button("Hasil Diagnosa"):
        empedu_prediction = empedu_model.predict([[jaundice, demam, nyeri_perut_punggung, mual_muntah, urine_keruh]])
        
        if (empedu_prediction [0]== 0):
            empedu_diagnosis = 'Anda tidak memiliki gejala Batu Empedu'
        else:
            empedu_diagnosis = 'Anda memiliki gejala Batu Empedu'
    
    st.success(empedu_diagnosis)

    
# INFORMASI ################################################## 
if (selected == "Informasi Penyakit"):
    #page titile
    st.title("Informasi Penyakit")
    
    option = st.selectbox(
    'Informasi penyakit yang ingin diketahui?',
    ('Gastroesophageal reflux disease (GERD)', 'Batu Empedu', 'Laktosa Intoleran', 'Usus Buntu', 'Wasir'))
    
    if option == 'Gastroesophageal reflux disease (GERD)':
        query4 = 'SELECT keterangan FROM gerd'
        df = pd.read_sql(query4, mydb)
        st.table(df['keterangan'])
        
        query5 = 'SELECT saran FROM gerd'
        df = pd.read_sql(query5, mydb)
        st.table(df['saran'])
        
        query6 = 'SELECT gejala FROM gerd'
        df = pd.read_sql(query6, mydb)
        st.table(df['gejala'])

    	
    elif option == 'Batu Empedu':
        
        query7 = 'SELECT keterangan FROM batu_empedu'
        df = pd.read_sql(query7, mydb)
        st.table(df['keterangan'])
        
        query8 = 'SELECT saran FROM batu_empedu'
        df = pd.read_sql(query8, mydb)
        st.table(df['saran'])
        
        query9 = 'SELECT gejala FROM batu_empedu'
        df = pd.read_sql(query9, mydb)
        st.table(df['gejala'])
        
    elif option == 'Usus Buntu':
        
        query10 = 'SELECT keterangan FROM usus_buntu'
        df = pd.read_sql(query10, mydb)
        st.table(df['keterangan'])
        
        query11 = 'SELECT saran FROM usus_buntu'
        df = pd.read_sql(query11, mydb)
        st.table(df['saran'])
        
        query12 = 'SELECT gejala FROM usus_buntu'
        df = pd.read_sql(query12, mydb)
        st.table(df['gejala'])
    
    elif option == 'Wasir':
        
        query13 = 'SELECT keterangan FROM wasir'
        df = pd.read_sql(query13, mydb)
        st.table(df['keterangan'])
        
        query14 = 'SELECT saran FROM wasir'
        df = pd.read_sql(query14, mydb)
        st.table(df['saran'])
        
        query15 = 'SELECT gejala FROM wasir'
        df = pd.read_sql(query15, mydb)
        st.table(df['gejala'])
        
    else:
    	
        query = 'SELECT keterangan FROM laktosa'
        df = pd.read_sql(query, mydb)
        st.table(df['keterangan'])
        
        query2 = 'SELECT saran FROM laktosa'
        df = pd.read_sql(query2, mydb)
        st.table(df['saran'])
        
        query3 = 'SELECT gejala FROM laktosa'
        df = pd.read_sql(query3, mydb)
        st.table(df['gejala'])
        
        #cursor = mydb.cursor()
        #cursor.execute("SELECT * FROM laktosa")
        #data = cursor.fetchall()
        
        #st.table(data)
        
        
    
    
