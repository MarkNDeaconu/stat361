#Used code from week 3 material STAT 463
set.seed(17)
rep_num = 10^5
alpha = 0.05
z_alpha_half = qnorm(alpha/2, lower.tail = F)

for(p in c(0.2, 0.6)){
    cover_prob = rep(0,4)
    ind = 1
    for(n in c(10,20,30,100)){
    cover_cnt = 0
    for(rid in 1:rep_num){
        my_dat = rbinom(1,n,p)
        p_n = my_dat/n

        se = sqrt(p_n * (1 - p_n) / n)
        lb = p_n - z_alpha_half * se
        ub = p_n + z_alpha_half * se


        if(lb <= p & p <= ub){
        cover_cnt = cover_cnt + 1
        }
    }
    cover_prob[ind] = cover_cnt/rep_num
    ind = ind + 1
    }
    print(paste("Coverage probability for alpha = 0.05, p=", p, ", n taken from c(10,20,30,100)")) #nolint
    print(cover_prob)
    }