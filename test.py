#print ("hello gloria")

i=2
#print (i)
#i="hello gloria"
#print (i)

a=10
b=2
c=a+b
#j'ai une list des etudiants avec leur note
#traitement de cette list
def somme(a1,b1):
    c=a1+b1
    return c

#res=somme(a,c)   
#print (c)

list=[1,2,3,5]
#print(len(list))
s=0
for i in range(len(list)):
   s=s+list[i]
   #print (list[i])

moy=s/len(list) 
print("la somme est:", s," la moyenne est",moy)