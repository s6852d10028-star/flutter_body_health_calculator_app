import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //ชั้นที่ 1
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Body Health Calculator',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  'assets/images/logo.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  'คำนวณหาค่าดัชนีมวลกาย (BMI)',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  'คำนวณหาค่าแคลอรี่ที่ร่างกายต้องการในแต่ละวัน (BMR)',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          //ชั้นที่ 2
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.network(
                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAlAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAABQMEBgIBB//EAEsQAAEDAwIDBQUEAw0FCQAAAAECAwQABRESIQYxQRMiUWFxFDKBkaEjQlJiFYKyByQlM0NTcoOSk7HB0hY0wtHwNVRjZHOis8PT/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/APuNFFFAUUVQvF3hWWGqXcX0tNA4AxlSz0SkDdRPgKC9mkl44rtNrkCIt5cmcr3YcRsvOn1Sn3R5nApWGr/xR35C3bHaFe6y0f32+n8yuTYPgMnzFX7QiyWhSoFhiIUtCk+0ezAKKdR95xROSefUnnQVUzOL7qD7JbYllZPuuTnO2d/u0HA+Kq6HC9xkEm68U3R/PNuOERkD00DV9a1HKsmLwuDxC+t98uW+U/2BSd/ZXEgJSfJKtwc9ceNBG/whwtHcSm4vSXFr5CXc3lE745FfjXT3BnB7L7UdcZLL7v8AFoEt1Kl+ne3rriXt7VLnXmA5GkFERJm2+RsXGklRBQror3gARgnw51bmvod4psQ91RjSXdKuY2QP86CEcEwo+TAud6iK6FFxcWB8FkiuRauK4BCoPEDNwQP5G4xUpUf6xvGP7JqPi65KMd9TKngxb1IfccaQSla0qCigkdAkZPqPA1rQQUgjkRQZP/a2VbTp4oskm3oBx7XG/fMc/FA1JHmpIrSQZ0S4RkSYElqSwsZS40sKB+Iqmm6KcvztsaYDiGmEuvOheOzKidKSOpIBPpSiRw3BkvvT+GpptdxCyHXIwBbWocw61yPLyPnQayisvbuJn4s1u18UxkQZrh0sSUEmNK/oqPuq/Kd/DNaigKKKKAooooCiiqF6usay21+fNUQy0nkkZUtXIJSOpJwAKCtxHfo9jiIWttciU+vs4sRrdx9w8kgf4nkBvS+ycOyHZiL3xK4iVdebTQ3ZhA/dbHj4rO58hRwxaJL0pfEN+R/CslGGmVbiEydw2nz6qPU+Qqe432ZbJ0hMi3F+C2hLgdjLBdCTsctnGrBH3STuNqDlm/QJ5ktS58BmOpS45YcfCHgoEpOcnbI5DGeXjXl6QLPPgXaG0SjKYklllGVONqPdISOZSo59CquXEWziNtxyBCt0oqy1KVLjELRtyIKckj8Jxz5+Mz1zj2aM1bYSVTJMVlKSFLCUtJAwFOuHZAwPU9AaB6DrQDgjI5KHKs7Jf4fjxH7XOmCcHVqW5FP2yzqVqIKEDOM9MVmHL3P4jeUzaWH70Rspxtao1tQfAr953/DypnD4OvLzAbuXECoLP/dLEyIzYHhqwVH12oG6rlFV2am7BOcDY+zUuKlrSB4aykiujeAtwOOWGYVp91Y7Fah8l5pIOBOH2JBanwpty1BTiXX5DjxAB90gn5eNSN/ubcMmKSi0ojv61FCkqIPM6c4IyMdKBg/cbEqJIhz4b8CPJB7ft4q2ULzzysDT9aeW5yKuE17C+iRHSkJQtLvaAjp3s71kEcHR2Sn9FXu/Wh5W3Z+0qcbztkaXAUnn0qhMtfElndVJegMXNvmZlm/esz9ZHuOf9bUGmgpk2s3IGG69NlSluodSnKHAdkZV90JSADnw2zXt4des/D7sa2ELuAjuOIWr8SQVKcV5Z+ZOKWWHjFMpCyVmcw1s8W2i3Ki/+szzx+ZOfTG9aBqJDksS5UR3t0T2sa0ua0kYIGk9BudhtnNBDIVbbxaYka7pZdbuDSShtwbLVpz3fA9R1pPGmTODZTMG7PuyrE6oNxbg4dS4yjsG3j+HwWfQ1PZc2LhuHN4jIRLaiNMBpHeKSAAEIHVaj4czgdKZQRJudqdb4ihMNtytSRFUoKPZq5IcHLUBscZFA5BBGRuK9rIWSQ/w1dkcO3F1bkF8k2qU4cnA3LCj1Uke74j0rX0BRRRQeGsg2DxRxUt5eVWiyr0NpPuyJfVXmEDYfmJ8Ka8Y3R202J52GNU55SY8RHi6s6U/LOT5A1xEt0iwcORoFmZRIfYCR9q5p1nOVqJ33O/xNBCu/Nm7Psh11LjGENQtGlUrOMrSVDcA7bHocmrU9sTbhFEbS3LiqS6rtUZAaUCCPXI232IB9Vcm62W9pRAvcZ+FLLuhlLySlXag4+ydTsVZ/Cc1YlrdsltahImF65yQorlv4ylKR33ldMJGNvEgdaCHia/x7exKbZfERhg5mTEpyUKP8m2PvOnb0yCegpPZeF5XELTci/srhWfVrj2ZKzqd/PJVzWo88cvWjg+0o4hmM3yS2f0RDURaI6zntFZOqSvxUo8s/wCdfQwKCNhlqM0hlhtDTSBhKEDASPKl/EF2Nsio9na7edIX2URjOO0Wf+EcyegFVOJXpi51nt0OY5ETNfcDrzSUlYShtSsDUCBkgdKntlgaiTjPkzJU+YEFpD0kgltBOSEgAAZIGTzOBQLYVwm2GamPxK6y63KKUs3Jtvs0Fz+aWPu7nunkc4589UDmopcZiZHcjymkPMOpKVtuJylQPQis5wncYsKziNNmtNBqbIjRw+6AShDqkpAycnAAFBpJIbLK+2ALYGSCPDeobeVmI2Vq1ZGUknJ09MnxxzpQ5xIuVIeZsdseuiGFFDzzTqENJX1SFKI1HxxsOpqS0z4d1L3saXIU+Ooe0RnE6Vtk495OcKBAwFb+RoEl24ZYurpnRlOwbq26pTc+KlfaJ7x2OSElJwMg5pbY71cIN1XBlx2mbqBrcitK+wuKerjPRDo6p69ehrVhhwFRQylYSSVs6dS21KOe7qISU7k5xS2+2mPxJb+wLrgfbV2keQ0SpyO4ORGkJSk8ufSgdMRbddpcS9skvKQhQaKidKSeZ0nksYI5ZG4pPc58W8cQiE5KCIFsWlbwbWdb0nmlGE74SCFHxJSOhpVwrf32JMgXIJalsvpj3dlONKXDgNyU42CV7BWOROTyNbK4z7fZGO3kJ7FLrmkdkyVFaz0wkZJNBTucNniizyIq0SIq0r+weWgoW2sbodTnzwa74Ru712thTPQGrlEcMea0PuuJ6jyUMKHkaqtXu4vyFSVQhCtsZel8SVfbLBAwrSNkgZB5557VDc/4E4yg3NvaJdgIUvwDoBLK/j3kfEeFBrKK8ooMpck/pXj22RMgx7VHXNdT/wCKvuN/TtD8qYXGLPly1ybPeEMOsoLRjuNBxrPPvb5B5dfgapcKgv3zie5KwoOTEx2z4IaQBj+0V/Oi3q4gajCRDbtkxh5SnQ2srYcTqJOCrvAkZxyHKguWNctQEG5WwR1REpUl5LwcbcO/eSdjnmTkDHnWL4lkOX64NW5pWBd1kOKye5bmlb8uXaL6+BHhWwuM+ceGJDrrHsc14mMy3q1aFrX2aDnruQazXCrDcm/3q4soPYQ1ptUUgK7rTAAOCk5GVZ6EHFBs7AlLcRTTeOzbcKUAK1BIAGwOBtTOk9smx2UvofeSlfaqVusq2wOtTzLmhsluMptx7G2VAJHMcyQDuOQOaCvxHbZM1EWXbVoRcIDpejhz3HMpKVIVjkClRGehwcHFWLJdW7tC7ZLTjDqFlt9hwd5pwc0n/n1GDVJjtoa0Oha1oKvtdTR7+SO8VAq3HwqPhX/tDiTyuh/+Fqg0VZ+2cH2mC7PecYTLenPuOurkpC8BSirQkHkkEnYVoKKCKNHZisoZjNIaaQMJQ2nSkDyFZ/ihSLZdLVfFgIZZcVHmO/hZcTsT5BYQc9N60uRXLiEOIUhxIUhQwpJGQRQV32A8EvMLSl1I7jnMEeB8RVVyK3LdcS4jsZCO9qTlSVg7AkEYVsnkdxSvhdTdsVebe2VCFCmhuK0MnQlTaF6E+WVHA6cqbPyUCVGcDboJWWyVNHkfPpvj5UGH4zju2mdEvchgFtsey3BCTlMiIvZeAAMBBIO+9am0a59odgOvH2mE4GkPkZJwAppzzykpJ+Iq9xDbG7vZ5UBxIIdbUkagSM48OtY39zee44i3F0qK1xXID5Ud+1jLwnPmUKVn+iKB8q/2Jt4pK0T7g5hDqYcZTi1KT0IAOnB6E7V5fGXeJ+Dp7QjuRJYClNNu4K2nW1amycbZyEnn1qZ2zLl3hxTriosSOCqII69KlOryVun54AORuaYWSPFiR1x48wy3EuqU+4t0LWVnnqxyPltyoPeH7ki8WODcm/dksJc+JG/1opJwM63Bt062OL/3G4vtJHgkq7RI+SxRQc8BF1zhaW+zj2h6dNcQVcsl5YTny2FOyu7ttlSm4ThSMkJUpJPpkGkPAjBk8ELiB1TalPy2taDhSD2yxkeYr2S1aWZf6PmcYTA6rAVGcnNpUc9DtkZ9RQMb5IRJYsy0Z7N6Wh0A+CUKcH1SKzf7nKEucJxZSUa1SVuyFKCdRBWsqO6TrHOtJxA2htdmQ2kJbTJUhIHTLDgAFZ39zka+CrQgp1uNMaDslzSQSOmFjl0oNJkOnSSHSPuEpdI+CsKFAPYp06yynwUpTYPwWCPkaFqB7jh1+CSsE/2XAD9a677Y21IHo42PmNSaCNTKXW1BDKVah76WkKPzQoH6VQ4ElpYjLtdwSpm8a1vvBwFJkhSj9qnPMYwCPu4x4Uw7izkhLivIsuf44NKL8Uw48aQWABAlNyUuhAQW2ivS6BjoArJ33BPhQbTNHSsXNhoufFVzRIelltlhjswzIfQlOQonZs4+dd2y6X612xmG/ZX7guMjR7Q1IJU8ByOFgHJHifjQXfbbvdrpNZs0mLGhQlhlT7zCnS89jKgO8AAnKRnfckbYqb2Lic7fpqAB5W8//pSrhG6R03uZb4eoRZQXMQw4NLsV3UO1bWnpuoKHjqPTFbSgT2ixJtrIQZj8hani+644E6nXDnJOB6YHTAFMJqNUVwhSkqQNSSk4II3FdvPBoAkKVk6QEpyc1WX7TLQpKk+zsrGDnBcII+Q+vwoLLRKmUKVzKRk/CvmXCqRGvM9ttSSlm/tvJ0KBGHmCgjbbn4V9FmSkxG9DSAt7T3GwoJwMbEnonzr5/Zzr4iu3fCyLvCbyF690tlR3wOlBrb/Duq33XbKmJ7RIjhjt31kKj7k6kgA6ve5ZG4FT2mxxrQ6wmChpppuP2RCUYW6cg6lHr1+KjUl0s0a5ykOPSJbakN6QiPJW1sTnJ0kZ5VBAtEC33VCmpM5cgsq0pkSnXUlORkjUSARty8aD5/xDdFWXiq9stnAekoe+JZbH/DRS390OMuVxnclNbhBbScb79kg/50UH0PgkdixfLe2oByLdJGPLtD2g/bqKHduG7bbhb5XYolacPxHGtTzq+vdxlZJ675zU0D+Dv3QLnGVgIukVuW2PFbf2a/p2dWb9ezChz+wS0mY0ptmKHCCXHHMBO3PGVfQ0ENwQ7H4Yt8h9CkLhOsPrQs5KEBQCgT1IQT8qR8D5YautnXu5b7m+2ltSUKHZqVrQQk4VyUORrURYz77E203OQ5OQpgJcfWyEZ1ghSdgAfHbxrExHnbbxVDclHUi5tfo6UClJHtrGdKiFbd9G/wAqDaqVo7q1FvyKyn6OAj5GhKCBqQ3geLbZGfUtqx9KMlkblTXrrbH11IrwNhw60NpWf5xKELPzQoGgFuD3VulPkXgfo4mk3EEtKEG3Rw05KuTDjDSVBGAnbWtWk4KUpJJz5Ac6d6y2Ma3E/wBJTqP2gRWdnxl3a73plpep1uxltpYUFFKnFL5EAc9AoJeE2HZMd65gLW1K0JirW2SSw2nS2okKHvbq/Wp8WXSN2s/1C/8AXSuwzINztEWRDbjKQplBKUoZyjYbEZyCPA0wLSOrDJ2/m2f9VBH7IiPK9tZjstS8YLqWEpUtI+6oleSPXlV9V4abZy40oLCclCVJUQcZwMHfwqmOyQcjsUH+oT/zrsP5Gz2ryQ6T+wiguRS5N7KS6WuySSptDatWT0JOOY3GB41XlzX/AGl6Ow4whKNIKlHvZIOcDffl0PWoW/avZlMo7ZtvUpRWM5IJO2XMY6eNDakpGhLm3PShzqfJsZJ+NB4W0s5dWkIKjqU6UBJJ8dS/8hWR4HQqfOblKJJm3aXcgSc5abSGEb9R3s0z41nO22xuIhoUifPUIcQpaSFqcc7oPeJUQASenKr/AATbGYaHOwyWIbSLcwfxBr31fFZUP1aBrcbEzPm+1qmT2HQ2Gx7NJU2AASdwNjz6g1XtNveiXl7tJ9wmNoYCUKlhOEknJCSlIzsB41Wkr4jtqVuF+A7GW6pSnFtL1RkkkjIB74Gwzt41ejSZFvtMufdp7EpLaVvB1lGhAQlOdhk+B3zQZ2zWpN3uN/nKAUly6LSgnwQ22j/FJopzwBEch8JwPaE6ZEgKkvD87qis/tUUFbjtJgJtvEbYJNpkhT+OsdzuOfAAhX6taFUOHJfYmLYZdebH2TxQCpIPgelSymGpMd2O+kLadQULSeRBGCKzXBUl2GJPDU1ajKtZCWVq5vRj/Fr8yANJ80+dBqcViuPLGiW24kq7JicUJL2P92lJ/iXj5Zwg+qfOttUExuO/HXHlhCmXh2akL5KB2x8aDH8KXhdxhuNSkCPdIK+wnR0pcRocH3gpOQUkbg4pySl0jUEuK8NTa/2gk1k75aLhb7sxKgOfwo0nRHUtZSi5sD+QcI5Op6K6jfxAc2PiCJfIhW06Wn2zpkRXnk9owsc0qDic/XegbBCmxqGpPgAy6n6pJH0pLZbk1b+Jrq3dQ+y/OfbTEecbUWlNpbSEoDhHvaivY4O/WnKWgTlDaSPEMpP1QoVFNhMzIjkWbHLrDgwtB7YA/LNBS4uhM2pyPxFEjtoMVWidoQkdpGV7xORjunC/QHxpglxpQBQ62oHcHWz/AKaTtXOTYmjbbzGmXK3OgojyGWFuuJRg5bdTjKsJz3gDkDffnBYV3f8ARQFkei3SDGUW2guQ7HeCRybUCk4UkYG/0oNEH1DZLg9BIA/ZRXvec568erzn+AFU7Rcm7tDEhgPjvKQ42p10ltaThSTjbIII51bLSiN2j+sypX7SqDhTaUYKkAH8RbbT+2Sa9LupJPad1IyVBa1gD0SAPrXKlts5UXG2gkbnW0jHyBNYu73M8VFyNFddRw+2sIkzWnVrXOX/ADDGcZzyKhQcxHXuIL4i7w0J7FClxLL9kE6lkYdlEc9KBkDPP4ivplvhtQITEWPns2UBCc8zjqfOlfDln9haEiS0hqQpsNNsN+5FaHutJ9Op6n4U9oPFDNY/jNppyFbOFISezTc3g0pKBsiM333PQEDT+tWvcWlCSpaglKRkk8gKyvCeq9XOZxQ8Fdi8PZrclXRhJOV/rq39Amg1SEhKQlIASNgB0FFdUUBWb4utcpa4t7syQbrbslKOXtDJ99o+uMjwIFaSigW2i8xrxaGrlA1ONuJJ0clpUOaCDyUDtjxpA4iXxBIjTrjDeFqDuGICThzWDs67yxgg4Tnu7E78vbvCl8NXJ6/WRhb8N86rnb2xurHN5ofjxzH3seNPEzGrzYHZFlkoX7QwrsHUnYKKds+BBoKKZtqnRnLVcJjMtSVltak5IBz3QVjYLG3UHNZ7iDh2RFlJuDcmSzJbGlu7xUa3QnomS2P41H5gPXHOmrtwtts4aTa4bPayzH7Fu3oTlxThGO8Om5yVH1phEmzGbjBtCEtSFsw0rnOqWQWzsEkc8lRCtjjYHegyTHFLtuZa/wBqIOppf8XdIDKJER0eJUACj0Naa3yoVyYD9ucjyGTuFx05H/sXUrlstkyRJVb31wpSV6H/AGchOpWM4WggpVkeIrO3DgNK3Vui3QXFrO79ueXAePqE5So/Kg0q9bJbcSh89mtKlAIeO2d9snO1QvcLwJsiRJj3C4sIlL1vtRZakNrXyJwOR2wcY5VkkcOXOIdLFw4saRyCXRHkpHoQcketTN22+tt9kzfOJAjJOlq3MoOT5qOKDZJsMCJEbZgMtxQynCMA6Tz9/wDFuSeefOsxO4ts0SR7I22qdcNRT7LbY6H15+BOn41VTwhLnq1Tm71cM803i6htv+7ZBz6GtBauEkRGOx7ZmKxyMa1s+zIUPzK3Wf7Q9KDKvM3fiGUYt4K0sHGLDBcTkj/zTqRhA/KOfnWsjwoXDsZNxuzjXaNJ7NhplvDbAPJtlA3JPzP0F6JIgRFTLZaY6ESIjQd7BLZQFZzjB+9uDkjrzpLbrz7ZdLXqeM1iTnWh1kJXCkBJIGwGMjWMHfbzoLciE3xPFMiSy9HdabUhuO46UKju8ws6TjVjSeuKYWWXNclSok4sPBlLa25MfOlYVnYgk4UNOefIiu40eQzfZx0ZhSWW1hWRs6MpUMeaQn5UovF0MR9PDvCcZj9Jup1L0IAagoO3aOY6+CeZx4UEfEshfEVyPC1uWoMgBV2kNnHZNHk0D+NX0Tv1FaxhlqOy2ywhLbTaQlCEjASByApfw7ZY9itwisKW64pRcfkObrfcPvLUfEmmlAUUUUBRRRQFZO4WCbap7l24TKEOOq1S7a4cMyfFSfwOfmGx6itZRQI7FxHBvK1soCotxZH74gyE6XmvUdR5jauYzEq2TLo63EXKcmPh1txKgB7qUhKsnIAx57Hxqe+8O26+JbM1pSX2jlmSystvNH8qxuPSlOriqwjCm0cRQ08ikpZlJHmDhC/mmgnvNrVJtceypkKS/IWXFyUbKSpPfKx+vpHocV1aLnIuzdty4WJKQ4JzSQD3kYSpO45aiCD4VBE4r4alXNsyXv0fdEpKA1PbUw5g80jVgKHoTTmFa4ke4TblEwXZwQXCDlJKRgEeu2fQUCyHc7w/EuMpsRHhElPNIZ0KQpxLZx72ojOx6YrlfEinZVs9ndisQbhAXLQ/IBynGjCSMgbheef3alg2e5xbZJgCZHT7Q884ZCG1akdosqOEk4yNWASenLpXrtkdjS7Oq2tx/ZrdGXHCHlkEpISByB5aRQeXOVOQbMTMShiU92L6o6AMlSVFCklWcAkAfGu47ky38Rt256U5KiTGFutF0J1tKQUhQyAMpIUMZ3GDU0+1SbjakxH322XUvJdQtlGQ3pXqTgHwwBXkuTa7Ksz7zcmG3gjT2shxKNKeZCR0zgeewoI+ImH2Z1tusFlx+RHdLLjLY3dZcwFDw7pCVb/hPjTKQy0pbEqQoNpjkuYUQADjGSfIE1njxe/cu5wtZ5Vxyce0vgxo6fPUsalD+ik16nhSTdlpe4unmeAdSYDALcVPqnmv9Y48hQRv36dxKpUThI6ImdL14WnLaR1DIPvq8/dHnT2w2OFYohYhpUVuK1vPunU48vqpauppg02hptLbSEoQkYSlIwAPACu6AooooCiiigKKKKAooooCvK9ooK8yFFmtFmZHafaPNDqAofWs+eArAhWuAxItyhy9glOMp/spOn6V7RQL7hZpsMkReJ722kcgXGl/tNmqbUW7uLCFcVXnB8BHH/1V5RQOGuEWZzINwvN7k55gzS3n+7CaYW3hHh+1u9tDtUdLx5vLTrWf1lZNFFA7xyr2iigKKKKAooooCiiig//Z',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Deviloped by Rujiradaa SAU 2026',
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
