import os,sys,math,pdb
import numpy as np
from os import listdir
from os.path import isfile, join
from collections import Counter
import random
from collections import Counter

dat={}

def solve(a,b):
	x = np.linalg.solve(a, b)	
	return x

def validateEqv(xilst):
	l=len(xilst[0])
	for j in range(l):
		c=[]
		for i in range(len(xilst)):
			c.append(xilst[i][j])			
		if len(Counter(c).keys())!=1:
			return False
	return True

# ax^3+bx^2+cx+d=relid
def solve_template1(uid,uid_data,dim_id):	
	#~ print "\n\nProcessing uid: " + str(uid)
	xilst=[]
	for c in range(len(uid_data)-4):		
		ta=[]	
		tb=[]			
		for i in range(c,c+4):
			rid=uid_data[i][0]
			tb.append(rid)
			dimlst=uid_data[i][1]
			te=[]
			t=dimlst[dim_id]
			te.append(t*t*t)
			te.append(t*t)
			te.append(t)
			te.append(1)
			ta.append(te)
		a=np.array(ta)
		b=np.array(tb)
		#~ print a
		#~ print b
		x=np.linalg.solve(a,b)		
		xi=[]				
		for i in range(len(x)):
			xi.append(int(round(x[i],0)))
		xilst.append(xi)
	if validateEqv(xilst):
		return xilst[0]	
	return []

def chk_template1(dimcount):
	r={}
	for i in range(dimcount):
		tmpr={}
		update_flag=True
		for k in dat.keys():
			c=solve_template1(k,dat[k],i)
			if len(c)==0:
				print "INFO: No Likely Invariants found using template 1 for dim " +str(i)
				update_flag=False
			else:
				tmpr.update({str(i)+","+k:c})			
		
		if update_flag==True:
			for k1 in tmpr.keys():
				r.update({k1:tmpr[k1]})
			break
	if len(r)>0:
		print "SUCCESS: Likely invariants found using template 1"
		print r
	return r

# axyz+bxy+cyz+dzx=e=relid
def solve_template2(uid,uid_data):
	print "\n\nProcessing uid: " + str(uid)
	xilst=[]
	for c in range(len(uid_data)-5):		
		ta=[]	
		tb=[]			
		for i in range(c,c+5):
			rid=uid_data[i][0]
			tb.append(rid)
			dimlst=uid_data[i][1]
			te=[]
			t1=dimlst[0]
			t2=dimlst[1]
			t3=dimlst[2]
			te.append(t1*t2*t3)
			te.append(t1*t2)
			te.append(t2*t3)
			te.append(t3*t1)
			te.append(1)
			ta.append(te)
		a=np.array(ta)
		b=np.array(tb)
		#~ print ta
		#~ print tb
		x=np.linalg.solve(a,b)		
		xi=[]				
		for i in range(len(x)):
			xi.append(int(round(x[i],0)))
		xilst.append(xi)
	if validateEqv(xilst):
		return xilst[0]	
	return []	
	return

def chk_template2(dimcount):
	r={}
	for k in dat.keys():
		c=solve_template2(k,dat[k])
		if len(c)==0:
			print "INFO: No Likely Invariants found using template 2"
			return {}
		else:
			r.update({k:c})				
	if len(r)>0:
		print "SUCCESS: Likely invariants found using template 2"
		print r
	return r
	
# axy+bx+cy+d=relid
def solve_template3(uid,uid_data):
	print "\n\nProcessing uid: " + str(uid)
	xilst=[]
	for c in range(len(uid_data)-4):		
		ta=[]	
		tb=[]			
		for i in range(c,c+4):
			rid=uid_data[i][0]
			tb.append(rid)
			dimlst=uid_data[i][1]
			te=[]
			t1=dimlst[0]
			t2=dimlst[1]
			te.append(t1*t2)
			te.append(t1)
			te.append(t2)
			te.append(1)
			ta.append(te)
		a=np.array(ta)
		b=np.array(tb)
		#~ print ta
		#~ print tb
		x=np.linalg.solve(a,b)		
		xi=[]				
		for i in range(len(x)):
			xi.append(int(round(x[i],0)))
		xilst.append(xi)
	if validateEqv(xilst):
		return xilst[0]	
	return []	
	return

def chk_template3(dimcount):
	r={}
	for k in dat.keys():
		c=solve_template3(k,dat[k])
		if len(c)==0:
			print "INFO: No Likely Invariants found using template 2"
			return {}
		else:
			r.update({k:c})				
	if len(r)>0:
		print "SUCCESS: Likely invariants found using template 2"
		print r
	return r

def readfile(flname,dimcount):
	fl=open(flname,'r')
	content=fl.readlines()	
	for i in range(len(content)):
		line=content[i]		
		if "MAX_UNIQUE_COUNT_EXCEEDED" in line:
			print "ERROR: MAX_UNIQUE_COUNT_EXCEEDED"
			dat.clear()
			return
		uid=line.split(":")[0]
		uid_data=line.split(":")[1]
		relid=int(uid_data.split(" ")[0])	
		#~ dimcount=int(uid_data.split(" ")[1])
		dim=[]
		reldim=[]
		for j in range(dimcount):
			dim.append(int(uid_data.split(" ")[j+2].replace("\n","")))		
	
		reldim.append(relid)
		reldim.append(dim)				
		if uid not in dat.keys():
			reldimlst=[]
			reldimlst.append(reldim)
			dat.update({uid:reldimlst})
		else:
			dat[uid].append(reldim)
	#~ print dat
	fl.close()
	return

def write_template1(r1,gepid,outfile):
	fl=open("tmplt1_gepid"+gepid+"_"+outfile,'w')
	fl.write(gepid+"\n")
	fl.write("t1\n")
	fl.write(str(len(r1))+"\n") # linv count
	for k in r1.keys():
		if len(r1[k])==4:
			fl.write(str(k.split(",")[0])+" ") # dim id		
			for i in range(len(r1[k])):			
				fl.write(str(r1[k][i])+" ") # coefficients
			fl.write("\n")
	fl.close()
	return
	
def write_template2(r2,gepid,outfile):
	fl=open("tmplt2_gepid"+gepid+"_"+outfile,'w')
	fl.write(gepid+"\n")
	fl.write("t2\n")
	wr_flag=True
	for k in r2.keys():
		if wr_flag==True:			
			fl.write(str(len(r2))+"\n") # linv count
			wr_flag=False
		for i in range(len(r2[k])):
			fl.write(str(r2[k][i])+" ")
		fl.write("\n")
	fl.close()
	return
	
def write_template3(r3,gepid,outfile):
	fl=open("tmplt3_gepid"+gepid+"_"+outfile,'w')
	fl.write(gepid+"\n")
	fl.write("t3\n")
	wr_flag=True
	for k in r3.keys():
		if wr_flag==True:			
			fl.write(str(len(r3))+"\n") # linv count
			wr_flag=False
		for i in range(len(r3[k])):
			fl.write(str(r3[k][i])+" ")
		fl.write("\n")
	fl.close()
	return

# arg1: file name .db
if __name__ == "__main__":
	mode=sys.argv[1]
	flname=sys.argv[2]
	dimcount=int(sys.argv[3])
	gepid=sys.argv[4]
	outfile=sys.argv[5]	
	if not os.path.exists(flname):
		print "ERROR: Input file not found"
		sys.exit(-1)
	readfile(flname,dimcount)
	if mode == "t1":
		r1=chk_template1(dimcount)
		if len(r1)>0:
			write_template1(r1,gepid,outfile)
	#~ elif mode == "t2" and dimcount==3:
		#~ r2=chk_template2(dimcount)
		#~ if len(r2)>0:
			#~ write_template1(r2,gepid,outfile)	
	#~ elif mode == "t3" and dimcount==2:
		#~ r3=chk_template3(dimcount)
		#~ if len(r3)>0:
			#~ write_template1(r3,gepid,outfile)	
