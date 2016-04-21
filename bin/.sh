 c           @   sŠ  d  d l  Z  e Z d Z d   Z d   Z e r< d   Z n	 d   Z d   Z e Z	 e d d	   Z
 e
 Z d d
  Z e Z d   Z e Z e d    Z e Z e d    Z e Z e d    Z e Z d   Z e Z d   Z e d    Z e Z i e d 6e d 6e d 6e d 6e d 6e d 6e
 d 6e d 6e j  d 6e j  d 6e d 6e d 6e d 6e d 6e d  6e! d! 6e! d" 6e d# 6e d$ 6Z" d% Z# d&   Z$ d d'  Z% d S((   i˙˙˙˙Nt   rootc         O   sB   t  |  t | |  } t |  d k r: | a t |   n d Sd  S(   Ni    i˙˙˙˙(   t   child_wrappert   maint   nextt   __log__(   t   namet   argst   kwargst   temp(    (    s   sht   start	   s
    c         o   s  t  |  t  } | d k r# d Vn t | _ d Vy | j | |   | _ Wnb t d  j   } t | d  j d |   } t	 t
 d | d j
 d | d d	 | | _ n XxK t rü y t | j  } Wn& t k
 ró | | _ t |  } n X| Vq˛ Wd  S(
   Ni˙˙˙˙i    s
   /dev/errori   s   _main()s   (sh):t   :t   filet   stderr(   t   create_processt   __dict__t   CUR_DIRt   _mainR   R   t   readt   strt   replacet   printft   __name__t   TrueR   t   StopIteration(   R   R   R   R   t   childt   exct   errort   out(    (    s   shR      s&    	$		c            s   d   f d  } | S(   Nt   .c            s7   |  j  d t  }  t j t |   }    t j |    S(   Nt   ~(   R   t   HOMEt   patht   joinR   (   t   loc(   t   func(    s   sht   relative_cmd.   s    (    (   R"   R#   (    (   R"   s   sht   relative-   s    c         C   s   |  S(   N(    (   R"   (    (    s   shR$   4   s    c         C   s   t  |   d  S(   N(   R   (   R!   (    (    s   sht   echo_dir7   s    R   c         C   s+   t  |   } x | D] } t |  q W| S(   N(   t   true_lsR   (   R!   t   rett   item(    (    s   sht   do_ls<   s    c         C   s  |  s t  t  d  St t  t j t |  j d t   } t |  y t |  } | d k r t  d t d | d d n` t	 | d  s¸ t	 | d  s¸ t
 |  t t t f k rÁ | a n t  d t d	 | d
 d d Wn t k
 r } t  |  d SXd  S(   NR   i˙˙˙˙s   cd (s   ): No such file or directory:R   R   R   t   keyss   ):s   is not a directoryiţ˙˙˙(   R   R   R   R   R    R   R   t   get_pathR   t   hasattrt   typet   listt   tuplet   dictt	   Exception(   R!   t   _CUR_DIRt   _patht   e(    (    s   sht   do_cdD   s"    


	"
c         C   s?   t  |   } | d k r( t |  d  n  t | | j    d  S(   Ni˙˙˙˙s     does not exist or is not a file(   t   opent   IOErrort   set_pathR   (   t   loc0t   loc1t   f(    (    s   sht   do_cp_   s    c          G   sc   d } xL |  D]D } t  |  } | d k r; t | d  n  | t | j    7} q Wt |  | S(   Nt    i˙˙˙˙s     does not exist or is not a file(   R6   R7   R   R   R   (   t   locst   xR!   R;   (    (    s   sht   do_catf   s    
c         C   s   t  |  t    S(   N(   R8   t	   Directory(   R!   (    (    s   sht   do_mkdirv   s    c         C   s   t  |   d  S(   N(   t   del_path(   R!   (    (    s   sht   do_rm{   s    c         C   s   t  |  |  t |   d  S(   N(   R<   RD   (   R9   R:   (    (    s   sht   do_mv   s    c         F   s=   i  } d j  d d j  |  d f  e | U| d e |  <d  S(   NR=   s   def custom_cmd(*args): exec '''t    s   '''t
   custom_cmd(   R    R   t   commands(   R   t   codet   local(    (    s   sht	   do_define   s    c         C   se   t  |   } xR g  | j   j d d  j d  D] } | j d d  ^ q1 D] } t |  qM Wd  S(   Ns   \
t    s   
(   R6   R   R   t   splitt   eval_command(   t   filenameR;   t   partt   line(    (    s   sht	   do_source   s    At   exitR   t   echot   shutdownt   quitt   cdt   lsR=   t   clst   cleart   catt   mkdirt   rmt   cpt   mvt   spawnR	   t   definet   sources   /rootc         B   sĎ   d } |  j  d  }  |  d e k r e |  d |  d   } | d  k rL qË | d k  rË e |  d d |  d d d | d d qË nC y e |  d d	 |  d } Wn" e k
 rĘ d j |   d  Un X| S(
   Ni˙˙˙˙RF   i    i   s    (s   ): failed with error codeR   R   R   (   RM   RH   t   NoneR   R`   t   ProcessErrorR    (   t   cmdt   pidR'   (    (    s   shRN   Ş   s    0c         c   s_  g  g } t  d k r t  n d a |  d  k rO t d k rB d }  qO t d }  n  t d  d  Vxú t rZt |  j d t j t  d   d	 | } t |  } | d
 | k rŔ | j	 d
 |  n  y- t
 |  } | d k rě t t | f Vn  Wnb t k
 rPnQ t k
 r  n> t d  j   } t d | d
 j d | d d d n Xd  Vqa Wd  S(   Ns   /roott   /R    s   %D # s    %D $ s   /etc/profiles   %DR   t   historyi    i˙˙˙˙s
   /dev/errors   sh (sh):R
   i   R   R   (   R   R   Rc   t   CUR_USERRb   R   t   inputR   R.   t   insertRN   t   SYSCALLt   WAITt   ProcessInterruptt   SystemInterruptR   R   R   R   (   t   promptRh   Re   t   tmpRf   R   (    (    s   shR   ˝   s2    		
	*)(&   R   t   Falset   SOFT_RELATIVERi   R	   R   R$   R%   RX   R&   R)   Rc   R5   RW   R<   R^   R@   R[   RB   R\   RD   R]   RE   R_   RK   RR   Rb   RS   R   RV   t	   superpasst   terminalRZ   R`   RH   R   RN   R   (    (    (    s   sht   <module>   sb   								



	