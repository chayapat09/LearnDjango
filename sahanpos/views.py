from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    if request.method == "GET":
        #print(request.method)
        #return HttpResponse("Hello, world. You're at the polls index.")
        return render(request,'index.html',{'x':range(3),
                                        'Y':"PSG"})

    elif request.method == "POST":
        #return HttpResponse("OK")
        last_page = ''
        try:
            last_page = request.POST['last_page']
        except:
            return HttpResponse("Throw Exception xxx")

        if last_page == '1':
            return render(request,'index2.html',{'N':range(int(request.POST['N'])) ,
                                              } )
        elif last_page == '2':
            x = 0
            L = []#List if Input
            while str(x) in request.POST:
                try:
                    o = request.POST[str(x)]
                except:
                    HttpResponse("Throw Exception xxx")
                L.append(o)
                x += 1
            #L = L[::-1] # Return swap L
            L = sorted(L)
            return render(request,'index3.html',{'L':L})

        else:
            return HttpResponse("Throw Exception xxx")

    else:
        HttpResponse("FUK")