module Cerner
  module Resources

    DSTU2_BINARY_JSON_ENTRY ||= {
        "resourceType": "Binary",
        "id": "TR-197198634",
        "meta": {
            "versionId": "197198633",
            "lastUpdated": "2019-12-26T21:36:00.000Z"
        },
        "contentType": "text/html",
        "content": "PCFET0NUWVBFIGh0bWwKICBTWVNURU0gImFib3V0OmxlZ2FjeS1jb21wYXQiPgo8aHRtbD48aGVhZD48bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD1VVEYtOCI+PHRpdGxlPkFkbWlzc2lvbiBIICZhbXA7IFAgLSBSYWRpb2xvZ3k8L3RpdGxlPjwvaGVhZD48Ym9keSBtYXJnaW53aWR0aD0iNiIgbWFyZ2luaGVpZ2h0PSI2IiBsZWZ0bWFyZ2luPSI2IiB0b3BtYXJnaW49IjYiPjxkaXYgdmFsaWduPSJ0b3AiPgo8ZGl2IGNsYXNzPSJzZWN0aW9uIiBkYXRhLWRvYy1zdGF0dXM9IkFVVEgiIGRhdGEtc2VydmljZS1kYXRlLXRpbWU9IjIwMTktMTItMjZUMjE6MzU6NTkuMDAwWiIgZGF0YS1pcy1hZGRlbmR1bT0iZmFsc2UiIGRhdGEtZXZlbnQtaWQ9IjE5NzE5ODYzNiIgZGF0YS1ldmVudC1jZD0iNjMyOTM4MTkiIGRhdGEtc2VjdGlvbi1zZXF1ZW5jZT0iMSI+CjxkaXYgY2xhc3M9ImNvbnRlbnQiIHN0eWxlPSJmb250LWZhbWlseTogVGltZXMsc2VyaWYsTHVjaWRhIFNhbnMgVW5pY29kZTsgZm9udC1zaXplOiAxMnB0OyBmb250LXdlaWdodDogbm9ybWFsOyBmb250LXN0eWxlOiBub3JtYWw7IHRleHQtZGVjb3JhdGlvbjogbm9uZTsgY29sb3I6IHJnYigwLDAsMCk7IG1hcmdpbi10b3A6IDBwdDsgbWFyZ2luLWJvdHRvbTogMHB0OyB0ZXh0LWluZGVudDogMC4waW47IG1hcmdpbi1sZWZ0OiAwLjBpbjsgbWFyZ2luLXJpZ2h0OiAwLjBpbjsgdGV4dC1hbGlnbjogbGVmdDsgYm9yZGVyLXN0eWxlOiBub25lOyBib3JkZXItd2lkdGg6IDBwdDsgYm9yZGVyLWNvbG9yOiByZ2IoMCwwLDApOyBwYWRkaW5nOiAwcHQ7Ij48ZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiB0YWhvbWEsSGVsdmV0aWNhLHNhbnMtc2VyaWYsTHVjaWRhIFNhbnMgVW5pY29kZTsgZm9udC1zaXplOiA5cHQ7Ij4KPHRhYmxlIHN0eWxlPSJib3JkZXI6IDFwdDsgdGFibGUtbGF5b3V0OiBmaXhlZDsgYm9yZGVyLWNvbGxhcHNlOiBjb2xsYXBzZTsiIHZhbGlnbj0idG9wIiB3aWR0aD0iMTAwJSI+PGNvbCB3aWR0aD0iNjYlIj48Y29sIHdpZHRoPSIzNCUiPjx0Ym9keSBzdHlsZT0ibWFyZ2luLWxlZnQ6IDBwdDsgbWFyZ2luLXJpZ2h0OiAwcHQ7IHRleHQtaW5kZW50OiAwcHQ7IHRleHQtYWxpZ246IGxlZnQ7Ij48dHI+PHRkIHN0eWxlPSJib3JkZXI6IDFwdDsgcGFkZGluZzogMXB0OyBmb250LXNpemU6IDlwdDsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PiAgICAgIDwvZGl2PjwvdGQ+PHRkIHN0eWxlPSJib3JkZXI6IDFwdDsgcGFkZGluZzogMXB0OyBmb250LXNpemU6IDlwdDsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PiA8YSBuYW1lPSJfRkEwOTcxN0EtRTEzOC00OUJELUI2MjgtNjMxQkY2MzUyRjQzIj48L2E+PGRpdiBzdHlsZT0icGFkZGluZzogNHB4OyI+PHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OiBib2xkOyB0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPlByb2JsZW0gTGlzdC9QYXN0IE1lZGljYWwgSGlzdG9yeTwvc3Bhbj4gPGEgbmFtZT0iX0JENDAzMjRCLUQ2NjItNDdEOS04QjFCLUREQUQ2RDc2QUMwNSI+PC9hPjxkaXY+IDxkaXY+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+T25nb2luZzwvc3Bhbj4gPGRpdiBzdHlsZT0idGV4dC1pbmRlbnQ6IC0xZW07IHBhZGRpbmctbGVmdDogMWVtOyBtYXJnaW4tbGVmdDogMWVtOyI+Tm8gcXVhbGlmeWluZyBkYXRhPC9kaXY+IDwvZGl2PiA8ZGl2PjxzcGFuIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPkhpc3RvcmljYWw8L3NwYW4+IDxkaXYgc3R5bGU9InRleHQtaW5kZW50OiAtMWVtOyBwYWRkaW5nLWxlZnQ6IDFlbTsgbWFyZ2luLWxlZnQ6IDFlbTsiPk5vIHF1YWxpZnlpbmcgZGF0YTwvZGl2PiA8L2Rpdj4gPC9kaXY+IDwvZGl2PiAgPGEgbmFtZT0iXzUyRDgxMzYxLTRFMEItNEU4QS05OUQ1LTFCMEY3OTRGNDYzNyI+PC9hPjxkaXYgc3R5bGU9InBhZGRpbmc6IDRweDsiPjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDogYm9sZDsgdGV4dC1kZWNvcmF0aW9uOiB1bmRlcmxpbmU7Ij5NZWRpY2F0aW9uczwvc3Bhbj4gPGEgbmFtZT0iXzExREZCM0JFLUJFRUQtNDNENy04REI1LTE0RUI0RkYzNEJGMSI+PC9hPjxkaXY+IDxkaXY+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+SW5wYXRpZW50PC9zcGFuPiA8ZGl2IHN0eWxlPSJ0ZXh0LWluZGVudDogLTFlbTsgcGFkZGluZy1sZWZ0OiAxZW07IG1hcmdpbi1sZWZ0OiAxZW07Ij5ObyBhY3RpdmUgaW5wYXRpZW50IG1lZGljYXRpb25zPC9kaXY+IDwvZGl2PiA8ZGl2PjxzcGFuIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPkhvbWU8L3NwYW4+IDxkaXYgc3R5bGU9InRleHQtaW5kZW50OiAtMWVtOyBwYWRkaW5nLWxlZnQ6IDFlbTsgbWFyZ2luLWxlZnQ6IDFlbTsiPk5vIGFjdGl2ZSBob21lIG1lZGljYXRpb25zPC9kaXY+IDwvZGl2PiA8L2Rpdj4gPC9kaXY+IDxhIG5hbWU9Il84MUYwRkY3Ni1DMDVFLTQyRkQtQTYzMy01NTRCM0U2RDA5QjkiPjwvYT48ZGl2IHN0eWxlPSJwYWRkaW5nOiA0cHg7Ij48c3BhbiBzdHlsZT0iZm9udC13ZWlnaHQ6IGJvbGQ7IHRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+QWxsZXJnaWVzPC9zcGFuPiA8YSBuYW1lPSJfRkFFOTQyNjUtMDZEQi00OEY0LTk2N0ItRDUwMTUxMTNDMjlEIj48L2E+PGRpdj5ObyBhY3RpdmUgYWxsZXJnaWVzPC9kaXY+IDwvZGl2PiA8YSBuYW1lPSJfOUQ4NDQyQkItRjQ0MS00REQwLThEQjktN0M3ODE1OUU3RjBEIj48L2E+PGRpdiBzdHlsZT0icGFkZGluZzogNHB4OyI+PHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OiBib2xkOyB0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPlNvY2lhbCBIaXN0b3J5PC9zcGFuPiA8YSBuYW1lPSJfODcxQzIwQjgtRkRDMi00NzAyLUI3OTgtNDM0N0U3MUM4NzQ4Ij48L2E+PGRpdj4gPGEgbmFtZT0iXzVERkFDQTQ2LTZEQUUtNERDRi1BRkUyLUQyQTcxQUZFMDE1MSI+PC9hPjxkaXY+IDxkaXY+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+VG9iYWNjbzwvc3Bhbj48L2Rpdj4gPGRpdiBzdHlsZT0ibWFyZ2luLWxlZnQ6IDFlbTsiPiA8ZGl2PlNtb2tpbmcgdG9iYWNjbyB1c2U6IEZvcm1lciBzbW9rZXIsIHF1aXQgbW9yZSB0aGFuIDMwIGRheXMgYWdvLiAxMiB5ZWFyKHMpLiwgMTIvMjYvMjAxOTwvZGl2PiA8L2Rpdj4gPC9kaXY+IDwvZGl2PiA8L2Rpdj4gPGEgbmFtZT0iXzhFNkMyNEU1LUFDMUItNDk0Ny05MjgxLTUwRjcyMTM0MTQyNCI+PC9hPjxkaXYgc3R5bGU9InBhZGRpbmc6IDRweDsiPjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDogYm9sZDsgdGV4dC1kZWNvcmF0aW9uOiB1bmRlcmxpbmU7Ij5GYW1pbHkgSGlzdG9yeTwvc3Bhbj4gPGEgbmFtZT0iXzNDNzc5M0RGLUY3NzItNDhGRi1CMkZCLUZFQjM5OTdDOUE0MiI+PC9hPjxkaXY+IDxhIG5hbWU9Il9FNTQxMkE3MS1BNDRGLTQ2MkMtQUMzNi0yMDA3MTY4MzgwMzkiPjwvYT48ZGl2IHN0eWxlPSJ0ZXh0LWluZGVudDogLTFlbTsgcGFkZGluZy1sZWZ0OiAxZW07Ij5IZWFydCBhdHRhY2s6IEZhdGhlciAoRHggYXQgNzgpLjwvZGl2PiA8YSBuYW1lPSJfNEE3MDUwRTctQUYwMS00QTQ3LThCOEMtOTQyRERGM0VBQjE1Ij48L2E+PGRpdiBzdHlsZT0idGV4dC1pbmRlbnQ6IC0xZW07IHBhZGRpbmctbGVmdDogMWVtOyI+SHlwZXJ0ZW5zaW9uOiBGYXRoZXIgKER4IGF0IDc4KS48L2Rpdj4gPC9kaXY+IDwvZGl2PiA8YSBuYW1lPSJfQjhBNThCQ0MtNjVEMC00NDYwLTg1OTQtNzg4MzQwMThBNkI2Ij48L2E+PGRpdiBzdHlsZT0icGFkZGluZzogNHB4OyI+PHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OiBib2xkOyB0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPkltbXVuaXphdGlvbnM8L3NwYW4+IDxhIG5hbWU9Il9BMEFBRDA1Ny0yQzI4LTRDODktOTA1OC03MjlEODRERTc5MjIiPjwvYT48ZGl2PiA8dGFibGUgc3R5bGU9ImJvcmRlcjogMXB4IHNvbGlkIHJnYigwLCAwLCAwKTsgdGFibGUtbGF5b3V0OiBhdXRvOyBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlOyIgdmFsaWduPSJ0b3AiPjx0aGVhZCBzdHlsZT0ibWFyZ2luLWxlZnQ6IDBwdDsgbWFyZ2luLXJpZ2h0OiAwcHQ7IHRleHQtaW5kZW50OiAwcHQ7IHRleHQtYWxpZ246IGxlZnQ7Ij48dHI+PHRkIHN0eWxlPSJmb250LXdlaWdodDogYm9sZDsgdGV4dC1hbGlnbjogY2VudGVyOyBib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDVweCAwcHggNnB4OyBib3JkZXItYm90dG9tLWNvbG9yOiByZ2IoMCwgMCwgMCk7IGJvcmRlci1ib3R0b20td2lkdGg6IDFweDsgYm9yZGVyLWJvdHRvbS1zdHlsZTogc29saWQ7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDQsIDI0NCwgMjQ0KTsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PlZhY2NpbmU8L2Rpdj48L3RkPjx0ZCBzdHlsZT0iZm9udC13ZWlnaHQ6IGJvbGQ7IHRleHQtYWxpZ246IGNlbnRlcjsgYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCA1cHggMHB4IDZweDsgYm9yZGVyLWJvdHRvbS1jb2xvcjogcmdiKDAsIDAsIDApOyBib3JkZXItbGVmdC1jb2xvcjogcmdiKDAsIDAsIDApOyBib3JkZXItYm90dG9tLXdpZHRoOiAxcHg7IGJvcmRlci1sZWZ0LXdpZHRoOiAxcHg7IGJvcmRlci1ib3R0b20tc3R5bGU6IHNvbGlkOyBib3JkZXItbGVmdC1zdHlsZTogc29saWQ7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDQsIDI0NCwgMjQ0KTsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PkRhdGU8L2Rpdj48L3RkPjx0ZCBzdHlsZT0iZm9udC13ZWlnaHQ6IGJvbGQ7IHRleHQtYWxpZ246IGNlbnRlcjsgYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCA1cHggMHB4IDZweDsgYm9yZGVyLWJvdHRvbS1jb2xvcjogcmdiKDAsIDAsIDApOyBib3JkZXItbGVmdC1jb2xvcjogcmdiKDAsIDAsIDApOyBib3JkZXItYm90dG9tLXdpZHRoOiAxcHg7IGJvcmRlci1sZWZ0LXdpZHRoOiAxcHg7IGJvcmRlci1ib3R0b20tc3R5bGU6IHNvbGlkOyBib3JkZXItbGVmdC1zdHlsZTogc29saWQ7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDQsIDI0NCwgMjQ0KTsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PlN0YXR1czwvZGl2PjwvdGQ+PC90cj48L3RoZWFkPjx0Ym9keSBzdHlsZT0ibWFyZ2luLWxlZnQ6IDBwdDsgbWFyZ2luLXJpZ2h0OiAwcHQ7IHRleHQtaW5kZW50OiAwcHQ7IHRleHQtYWxpZ246IGxlZnQ7Ij48dHI+PHRkIHN0eWxlPSJib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDVweDsgYm9yZGVyLXRvcC1jb2xvcjogcmdiKDAsIDAsIDApOyBib3JkZXItdG9wLXdpZHRoOiAxcHg7IGJvcmRlci10b3Atc3R5bGU6IHNvbGlkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+aW5mbHVlbnphIHZpcnVzIHZhY2NpbmUsIGxpdmU8L2Rpdj48L3RkPjx0ZCBzdHlsZT0iYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCA1cHg7IGJvcmRlci10b3AtY29sb3I6IHJnYigwLCAwLCAwKTsgYm9yZGVyLWxlZnQtY29sb3I6IHJnYigwLCAwLCAwKTsgYm9yZGVyLXRvcC13aWR0aDogMXB4OyBib3JkZXItbGVmdC13aWR0aDogMXB4OyBib3JkZXItdG9wLXN0eWxlOiBzb2xpZDsgYm9yZGVyLWxlZnQtc3R5bGU6IHNvbGlkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+MjAxOTwvZGl2PjwvdGQ+PHRkIHN0eWxlPSJib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDVweDsgYm9yZGVyLXRvcC1jb2xvcjogcmdiKDAsIDAsIDApOyBib3JkZXItbGVmdC1jb2xvcjogcmdiKDAsIDAsIDApOyBib3JkZXItdG9wLXdpZHRoOiAxcHg7IGJvcmRlci1sZWZ0LXdpZHRoOiAxcHg7IGJvcmRlci10b3Atc3R5bGU6IHNvbGlkOyBib3JkZXItbGVmdC1zdHlsZTogc29saWQ7IiB2YWxpZ249InRvcCIgY29sc3Bhbj0iMSIgcm93c3Bhbj0iMSI+PGRpdj5SZWNvcmRlZDwvZGl2PjwvdGQ+PC90cj48dHIgc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYigyNDQsIDI0NCwgMjQ0KTsiPjx0ZCBzdHlsZT0iYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCA1cHg7IGJvcmRlci10b3AtY29sb3I6IHJnYigwLCAwLCAwKTsgYm9yZGVyLXRvcC13aWR0aDogMXB4OyBib3JkZXItdG9wLXN0eWxlOiBzb2xpZDsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PnRldGFudXMgdG94b2lkPC9kaXY+PC90ZD48dGQgc3R5bGU9ImJvcmRlcjogMXB0OyBwYWRkaW5nOiAwcHggNXB4OyBib3JkZXItdG9wLWNvbG9yOiByZ2IoMCwgMCwgMCk7IGJvcmRlci1sZWZ0LWNvbG9yOiByZ2IoMCwgMCwgMCk7IGJvcmRlci10b3Atd2lkdGg6IDFweDsgYm9yZGVyLWxlZnQtd2lkdGg6IDFweDsgYm9yZGVyLXRvcC1zdHlsZTogc29saWQ7IGJvcmRlci1sZWZ0LXN0eWxlOiBzb2xpZDsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PjE5ODI8L2Rpdj48L3RkPjx0ZCBzdHlsZT0iYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCA1cHg7IGJvcmRlci10b3AtY29sb3I6IHJnYigwLCAwLCAwKTsgYm9yZGVyLWxlZnQtY29sb3I6IHJnYigwLCAwLCAwKTsgYm9yZGVyLXRvcC13aWR0aDogMXB4OyBib3JkZXItbGVmdC13aWR0aDogMXB4OyBib3JkZXItdG9wLXN0eWxlOiBzb2xpZDsgYm9yZGVyLWxlZnQtc3R5bGU6IHNvbGlkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+UmVjb3JkZWQ8L2Rpdj48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPiA8L2Rpdj4gPC9kaXY+ICA8YSBuYW1lPSJfMkVEMjRFNTgtRTQwQi00OTQ1LUEyNzItQkVCREMxQ0Q4MEZDIj48L2E+PGRpdiBzdHlsZT0icGFkZGluZzogNHB4OyI+PHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OiBib2xkOyB0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPkRpYWdub3N0aWMgUmVzdWx0czwvc3Bhbj4gPGEgbmFtZT0iXzYxNTAwQUE2LTQwNjgtNDIxQi05QUM1LUNBMzI5NDA5ODU5OCI+PC9hPjxkaXY+WC1SYXkgQW5rbGUgKHJpZ2h0KTo8YnI+IENMSU5JQ0FMIEhJU1RPUlk6IFR3aXN0ZWQgcmlnaHQgYW5rbGUsIHBhaW4gaW4gam9pbnQ8YnI+IFJvdXRpbmUgMy12aWV3IHJhZGlvZ3JhcGhzIG9mIHRoZSByaWdodCBhbmtsZSB3ZXJlIG9idGFpbmVkLsKgIE5vIGNvbXBhcmlzb24gZmlsbXMgd2VyZSBhdmFpbGFibGUgZm9yIHRoaXMgZXhhbWluYXRpb24uwqAgTm9ybWFsIGFuYXRvbWljIGFsaWdubWVudCBvZiB0aGUgdGhlIGFua2xlIHN0cnVjdHVyZS7CoCBObyBmcmFjdHVyZSBvciBkaXNsb2NhdGlvbiBpcyBzZWVuLsKgIEJvbmUgbWluZXJhbGl6YXRpb24gaXMgbm9ybWFsLsKgIE5vIGFydGhyaXRpcyBpcyBvYnNlcnZlZCBpbiB0aGUgam9pbnQuPGJyPiBJTVBSRVNTSU9OIDEuIE5vcm1hbC7CoCBObyBmcmFjdHVyZSBpcyBzZWVuLjwvZGl2PiA8L2Rpdj4gPC9kaXY+PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT4KPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IHRhaG9tYSxIZWx2ZXRpY2Esc2Fucy1zZXJpZixMdWNpZGEgU2FucyBVbmljb2RlOyBmb250LXNpemU6IDlwdDsgbWFyZ2luLXRvcDogMWVtOyI+PC9kaXY+PC9kaXY+CjxkaXYgc3R5bGU9IndoaXRlLXNwYWNlOiBwcmUtd3JhcDsiPiAKPC9kaXY+PC9kaXY+PGRpdiBjbGFzcz0ic2lnbi1saW5lLWhlYWRlciIgc3R5bGU9ImZvbnQtZmFtaWx5OiB0YWhvbWEsYXJpYWw7IGZvbnQtc2l6ZTogMTBwdDsgZm9udC13ZWlnaHQ6IGJvbGQ7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsiPlNpZ25hdHVyZSBMaW5lPGRpdiBjbGFzcz0ic2lnbi1saW5lIiBzdHlsZT0iZm9udC1mYW1pbHk6IHRhaG9tYSxhcmlhbDsgZm9udC13ZWlnaHQ6IG5vcm1hbDsgZm9udC1zaXplOiAxMHB0OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7Ij5FbGVjdHJvbmljYWxseSBTaWduZWQgb24gMTIvMjYvMTkgMDM6MzUgUE0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2VybmVyIFRlc3QsIFBoeXNpY2lhbiAtIEhvc3BpdGFsaXN0IENlcm5lcjwvZGl2Pgo8ZGl2IHN0eWxlPSJ3aGl0ZS1zcGFjZTogcHJlLXdyYXA7Ij4gCjwvZGl2PjwvZGl2PjwvZGl2Pgo8ZGl2IGNsYXNzPSJoZWFkaW5nIj4KPGRpdiBjbGFzcz0iY29udGVudCIgc3R5bGU9ImZvbnQtZmFtaWx5OiBUaW1lcyxzZXJpZixMdWNpZGEgU2FucyBVbmljb2RlOyBmb250LXNpemU6IDEycHQ7IGZvbnQtd2VpZ2h0OiBub3JtYWw7IGZvbnQtc3R5bGU6IG5vcm1hbDsgdGV4dC1kZWNvcmF0aW9uOiBub25lOyBjb2xvcjogcmdiKDAsMCwwKTsgbWFyZ2luLXRvcDogMHB0OyBtYXJnaW4tYm90dG9tOiAwcHQ7IHRleHQtaW5kZW50OiAwLjBpbjsgbWFyZ2luLWxlZnQ6IDAuMGluOyBtYXJnaW4tcmlnaHQ6IDAuMGluOyB0ZXh0LWFsaWduOiBsZWZ0OyBib3JkZXItc3R5bGU6IG5vbmU7IGJvcmRlci13aWR0aDogMHB0OyBib3JkZXItY29sb3I6IHJnYigwLDAsMCk7IHBhZGRpbmc6IDBwdDsiPjxkaXY+PHRhYmxlIHN0eWxlPSJib3JkZXI6IDFwdDsgdGFibGUtbGF5b3V0OiBmaXhlZDsgZm9udC1mYW1pbHk6IHRhaG9tYSxIZWx2ZXRpY2Esc2Fucy1zZXJpZixMdWNpZGEgU2FucyBVbmljb2RlOyBmb250LXNpemU6IDEwcHQ7IGJvcmRlci1jb2xsYXBzZTogY29sbGFwc2U7IiB2YWxpZ249InRvcCI+PHRib2R5IHN0eWxlPSJtYXJnaW4tbGVmdDogMHB0OyBtYXJnaW4tcmlnaHQ6IDBwdDsgdGV4dC1pbmRlbnQ6IDBwdDsgdGV4dC1hbGlnbjogbGVmdDsiPjx0cj48dGQgc3R5bGU9ImZvbnQtd2VpZ2h0OiBub3JtYWw7IHRleHQtYWxpZ246IGxlZnQ7IGJvcmRlcjogMXB0OyBwYWRkaW5nOiAwcHggMjVweCAwcHggMHB4OyB3b3JkLXdyYXA6IGJyZWFrLXdvcmQ7IiB2YWxpZ249InRvcCIgY29sc3Bhbj0iMSIgcm93c3Bhbj0iMSI+PGRpdj5SZXN1bHQgdHlwZTo8L2Rpdj48L3RkPjx0ZCBzdHlsZT0iYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCAyNXB4IDBweCAwcHg7IHdvcmQtd3JhcDogYnJlYWstd29yZDsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PlJhZGlvbG9neSBSZXBvcnRzPC9kaXY+PC90ZD48L3RyPjx0cj48dGQgc3R5bGU9ImZvbnQtd2VpZ2h0OiBub3JtYWw7IHRleHQtYWxpZ246IGxlZnQ7IGJvcmRlcjogMXB0OyBwYWRkaW5nOiAwcHggMjVweCAwcHggMHB4OyB3b3JkLXdyYXA6IGJyZWFrLXdvcmQ7IiB2YWxpZ249InRvcCIgY29sc3Bhbj0iMSIgcm93c3Bhbj0iMSI+PGRpdj5SZXN1bHQgZGF0ZTo8L2Rpdj48L3RkPjx0ZCBzdHlsZT0iYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCAyNXB4IDBweCAwcHg7IHdvcmQtd3JhcDogYnJlYWstd29yZDsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PkRlY2VtYmVyIDI2LCAyMDE5IDE1OjM1IENTVDwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIHN0eWxlPSJmb250LXdlaWdodDogbm9ybWFsOyB0ZXh0LWFsaWduOiBsZWZ0OyBib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDI1cHggMHB4IDBweDsgd29yZC13cmFwOiBicmVhay13b3JkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+UmVzdWx0IHN0YXR1czo8L2Rpdj48L3RkPjx0ZCBzdHlsZT0iYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCAyNXB4IDBweCAwcHg7IHdvcmQtd3JhcDogYnJlYWstd29yZDsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PkF1dGggKFZlcmlmaWVkKTwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIHN0eWxlPSJmb250LXdlaWdodDogbm9ybWFsOyB0ZXh0LWFsaWduOiBsZWZ0OyBib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDI1cHggMHB4IDBweDsgd29yZC13cmFwOiBicmVhay13b3JkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+UmVzdWx0IHRpdGxlOjwvZGl2PjwvdGQ+PHRkIHN0eWxlPSJib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDI1cHggMHB4IDBweDsgd29yZC13cmFwOiBicmVhay13b3JkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+QWRtaXNzaW9uIEggJmFtcDsgUCAtIFJhZGlvbG9neTwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIHN0eWxlPSJmb250LXdlaWdodDogbm9ybWFsOyB0ZXh0LWFsaWduOiBsZWZ0OyBib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDI1cHggMHB4IDBweDsgd29yZC13cmFwOiBicmVhay13b3JkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+UGVyZm9ybWVkIGJ5OjwvZGl2PjwvdGQ+PHRkIHN0eWxlPSJib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDI1cHggMHB4IDBweDsgd29yZC13cmFwOiBicmVhay13b3JkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+Q2VybmVyIFRlc3QsIFBoeXNpY2lhbiAtIEhvc3BpdGFsaXN0IENlcm5lciBvbiBEZWNlbWJlciAyNiwgMjAxOSAxNTozNSBDU1Q8L2Rpdj48L3RkPjwvdHI+PHRyPjx0ZCBzdHlsZT0iZm9udC13ZWlnaHQ6IG5vcm1hbDsgdGV4dC1hbGlnbjogbGVmdDsgYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCAyNXB4IDBweCAwcHg7IHdvcmQtd3JhcDogYnJlYWstd29yZDsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PlZlcmlmaWVkIGJ5OjwvZGl2PjwvdGQ+PHRkIHN0eWxlPSJib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDI1cHggMHB4IDBweDsgd29yZC13cmFwOiBicmVhay13b3JkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+Q2VybmVyIFRlc3QsIFBoeXNpY2lhbiAtIEhvc3BpdGFsaXN0IENlcm5lciBvbiBEZWNlbWJlciAyNiwgMjAxOSAxNTozNSBDU1Q8L2Rpdj48L3RkPjwvdHI+PHRyPjx0ZCBzdHlsZT0iZm9udC13ZWlnaHQ6IG5vcm1hbDsgdGV4dC1hbGlnbjogbGVmdDsgYm9yZGVyOiAxcHQ7IHBhZGRpbmc6IDBweCAyNXB4IDBweCAwcHg7IHdvcmQtd3JhcDogYnJlYWstd29yZDsiIHZhbGlnbj0idG9wIiBjb2xzcGFuPSIxIiByb3dzcGFuPSIxIj48ZGl2PkVuY291bnRlciBpbmZvOjwvZGl2PjwvdGQ+PHRkIHN0eWxlPSJib3JkZXI6IDFwdDsgcGFkZGluZzogMHB4IDI1cHggMHB4IDBweDsgd29yZC13cmFwOiBicmVhay13b3JkOyIgdmFsaWduPSJ0b3AiIGNvbHNwYW49IjEiIHJvd3NwYW49IjEiPjxkaXY+MDAwMDAwMTU5NTEsIE1YIEhvc3BpdGFsLCBJbnBhdGllbnQsIDEyLzI2LzIwMTkgLSAxLzcvMjAyMDwvZGl2PjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PC9kaXY+CjxkaXYgc3R5bGU9IndoaXRlLXNwYWNlOiBwcmUtd3JhcDsiPiAKPC9kaXY+PC9kaXY+PC9kaXY+CiAgPC9kaXY+PC9ib2R5PjwvaHRtbD4="
    }

    DSTU2_BINARY_HTML ||= '&lt;!DOCTYPE html SYSTEM &quot;about:legacy-compat&quot;&gt;
      &lt;html&gt;

      &lt;head&gt;
        &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot;&gt;
        &lt;script&gt;
          window.NREUM||(NREUM={});NREUM.info={&quot;beacon&quot;:&quot;bam.nr-data.net&quot;,&quot;errorBeacon&quot;:&quot;bam.nr-data.net&quot;,&quot;licenseKey&quot;:&quot;cca411ed8f&quot;,&quot;applicationID&quot;:&quot;383841676,383841677&quot;,&quot;transactionName&quot;:&quot;dV8MRkteD15VFkpfXl9CPVBQXwJASTsAV1FfXgcdW1gNU0IdOlFCW1w9QVFeFB1DDApO&quot;,&quot;queueTime&quot;:3,&quot;applicationTime&quot;:2806,&quot;agent&quot;:&quot;&quot;}
        &lt;/script&gt;
        &lt;script&gt;
          (window.NREUM||(NREUM={})).loader_config={licenseKey:&quot;cca411ed8f&quot;,applicationID:&quot;383841676&quot;};window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var i=n[t]={exports:{}};e[t][0].call(i.exports,function(n){var i=e[t][1][n];return r(i||n)},i,i.exports)}return n[t].exports}if(&quot;function&quot;==typeof __nr_require)return __nr_require;for(var i=0;i&lt;t.length;i++)r(t[i]);return r}({1:[function(e,n,t){function r(){}function i(e,n,t){return function(){return o(e,[u.now()].concat(f(arguments)),n?null:this,t),n?void 0:this}}var o=e(&quot;handle&quot;),a=e(4),f=e(5),c=e(&quot;ee&quot;).get(&quot;tracer&quot;),u=e(&quot;loader&quot;),s=NREUM;&quot;undefined&quot;==typeof window.newrelic&&(newrelic=s);var p=[&quot;setPageViewName&quot;,&quot;setCustomAttribute&quot;,&quot;setErrorHandler&quot;,&quot;finished&quot;,&quot;addToTrace&quot;,&quot;inlineHit&quot;,&quot;addRelease&quot;],l=&quot;api-&quot;,d=l+&quot;ixn-&quot;;a(p,function(e,n){s[n]=i(l+n,!0,&quot;api&quot;)}),s.addPageAction=i(l+&quot;addPageAction&quot;,!0),s.setCurrentRouteName=i(l+&quot;routeName&quot;,!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,i=&quot;function&quot;==typeof n;return o(d+&quot;tracer&quot;,[u.now(),e,t],r),function(){if(c.emit((i?&quot;&quot;:&quot;no-&quot;)+&quot;fn-start&quot;,[u.now(),r,i],t),i)try{return n.apply(this,arguments)}catch(e){throw c.emit(&quot;fn-err&quot;,[arguments,this,e],t),e}finally{c.emit(&quot;fn-end&quot;,[u.now()],t)}}}};a(&quot;actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get&quot;.split(&quot;,&quot;),function(e,n){m[n]=i(d+n)}),newrelic.noticeError=function(e,n){&quot;string&quot;==typeof e&&(e=new Error(e)),o(&quot;err&quot;,[e,u.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){var t=e.getEntries();t.forEach(function(e){&quot;first-paint&quot;===e.name?c(&quot;timing&quot;,[&quot;fp&quot;,Math.floor(e.startTime)]):&quot;first-contentful-paint&quot;===e.name&&c(&quot;timing&quot;,[&quot;fcp&quot;,Math.floor(e.startTime)])})}function i(e,n){var t=e.getEntries();t.length&gt;0&&c(&quot;lcp&quot;,[t[t.length-1]])}function o(e){if(e instanceof s&&!l){var n,t=Math.round(e.timeStamp);n=t&gt;1e12?Date.now()-t:u.now()-t,l=!0,c(&quot;timing&quot;,[&quot;fi&quot;,t,{type:e.type,fid:n}])}}if(!(&quot;init&quot;in NREUM&&&quot;page_view_timing&quot;in NREUM.init&&&quot;enabled&quot;in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var a,f,c=e(&quot;handle&quot;),u=e(&quot;loader&quot;),s=NREUM.o.EV;if(&quot;PerformanceObserver&quot;in window&&&quot;function&quot;==typeof window.PerformanceObserver){a=new PerformanceObserver(r),f=new PerformanceObserver(i);try{a.observe({entryTypes:[&quot;paint&quot;]}),f.observe({entryTypes:[&quot;largest-contentful-paint&quot;]})}catch(p){}}if(&quot;addEventListener&quot;in document){var l=!1,d=[&quot;click&quot;,&quot;keydown&quot;,&quot;mousedown&quot;,&quot;pointerdown&quot;,&quot;touchstart&quot;];d.forEach(function(e){document.addEventListener(e,o,!1)})}}},{}],3:[function(e,n,t){function r(e,n){if(!i)return!1;if(e!==i)return!1;if(!n)return!0;if(!o)return!1;for(var t=o.split(&quot;.&quot;),r=n.split(&quot;.&quot;),a=0;a&lt;r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf(&quot;Chrome&quot;)===-1&&f.indexOf(&quot;Chromium&quot;)===-1&&(i=&quot;Safari&quot;,o=c[1])}n.exports={agent:i,version:o,match:r}},{}],4:[function(e,n,t){function r(e,n){var t=[],r=&quot;&quot;,o=0;for(r in e)i.call(e,r)&&(t[o]=n(r,e[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],5:[function(e,n,t){function r(e,n,t){n||(n=0),&quot;undefined&quot;==typeof t&&(t=e?e.length:0);for(var r=-1,i=t-n||0,o=Array(i&lt;0?0:i);++r&lt;i;)o[r]=e[n+r];return o}n.exports=r},{}],6:[function(e,n,t){n.exports={exists:&quot;undefined&quot;!=typeof window.performance&&window.performance.timing&&&quot;undefined&quot;!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function i(e){function n(e){return e&&e instanceof r?e:e?c(e,f,o):o()}function t(t,r,i,o){if(!l.aborted||o){e&&e(t,r,i);for(var a=n(i),f=v(t),c=f.length,u=0;u&lt;c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function d(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r&lt;t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||i(t)}function w(e,n){u(e,function(e,t){n=n||&quot;feature&quot;,y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:d,addEventListener:d,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(l.aborted=!0,s=l.backlog={})}var f=&quot;nr@context&quot;,c=e(&quot;gos&quot;),u=e(4),s={},p={},l=n.exports=i();l.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(i.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[n]=r,r}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){i.buffer([e],r),i.emit(e,n,t)}var i=e(&quot;ee&quot;).get(&quot;handle&quot;);n.exports=r,r.ee=i},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||&quot;object&quot;!==n&&&quot;function&quot;!==n?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o=&quot;nr@id&quot;,a=e(&quot;gos&quot;);n.exports=r},{}],loader:[function(e,n,t){function r(){if(!x++){var e=E.info=NREUM.info,n=d.getElementsByTagName(&quot;script&quot;)[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();u(y,function(n,t){e[n]||(e[n]=t)}),c(&quot;mark&quot;,[&quot;onload&quot;,a()+E.offset],null,&quot;api&quot;);var t=d.createElement(&quot;script&quot;);t.src=&quot;https://&quot;+e.agent,n.parentNode.insertBefore(t,n)}}function i(){&quot;complete&quot;===d.readyState&&o()}function o(){c(&quot;mark&quot;,[&quot;domContent&quot;,a()+E.offset],null,&quot;api&quot;)}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=e(&quot;handle&quot;),u=e(4),s=e(&quot;ee&quot;),p=e(3),l=window,d=l.document,m=&quot;addEventListener&quot;,v=&quot;attachEvent&quot;,g=l.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:g,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var h=&quot;&quot;+location,y={beacon:&quot;bam.nr-data.net&quot;,errorBeacon:&quot;bam.nr-data.net&quot;,agent:&quot;js-agent.newrelic.com/nr-1169.min.js&quot;},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=n.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),e(2),d[m]?(d[m](&quot;DOMContentLoaded&quot;,o,!1),l[m](&quot;load&quot;,r,!1)):(d[v](&quot;onreadystatechange&quot;,i),l[v](&quot;onload&quot;,r)),c(&quot;mark&quot;,[&quot;firstbyte&quot;,f],null,&quot;api&quot;);var x=0,O=e(6)},{}],&quot;wrap-function&quot;:[function(e,n,t){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e(&quot;ee&quot;),o=e(5),a=&quot;nr@original&quot;,f=Object.prototype.hasOwnProperty,c=!1;n.exports=function(e,n){function t(e,n,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f=&quot;function&quot;==typeof t?t(r,a):t||{}}catch(u){l([u,&quot;&quot;,[r,a,i],f])}s(n+&quot;start&quot;,[r,a,i],f);try{return c=e.apply(a,r)}catch(p){throw s(n+&quot;err&quot;,[r,a,p],f),p}finally{s(n+&quot;end&quot;,[r,a,c],f)}}return r(e)?e:(n||(n=&quot;&quot;),nrWrapper[a]=e,p(e,nrWrapper),nrWrapper)}function u(e,n,i,o){i||(i=&quot;&quot;);var a,f,c,u=&quot;-&quot;===i.charAt(0);for(c=0;c&lt;n.length;c++)f=n[c],a=e[f],r(a)||(e[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||n){var o=c;c=!0;try{e.emit(t,r,i,n)}catch(a){l([a,t,r,i])}c=o}}function p(e,n){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(e);return t.forEach(function(t){Object.defineProperty(n,t,{get:function(){return e[t]},set:function(n){return e[t]=n,n}})}),n}catch(r){l([r])}for(var i in e)f.call(e,i)&&(n[i]=e[i]);return n}function l(n){try{e.emit(&quot;internal-error&quot;,n)}catch(t){}}return e||(e=i),t.inPlace=u,t.flag=a,t}},{}]},{},[&quot;loader&quot;]);
        &lt;/script&gt;
        &lt;title&gt;Admission H &amp; P - Radiology&lt;/title&gt;
      &lt;/head&gt;

      &lt;body marginwidth=&quot;6&quot; marginheight=&quot;6&quot; leftmargin=&quot;6&quot; topmargin=&quot;6&quot;&gt;
        &lt;div valign=&quot;top&quot;&gt;
          &lt;div class=&quot;section&quot; data-doc-status=&quot;AUTH&quot; data-service-date-time=&quot;2019-12-26T21:35:59.000Z&quot;
            data-is-addendum=&quot;false&quot; data-event-id=&quot;197198636&quot; data-event-cd=&quot;63293819&quot; data-section-sequence=&quot;1&quot;&gt;
            &lt;div class=&quot;content&quot;
              style=&quot;font-family: Times,serif,Lucida Sans Unicode; font-size: 12pt; font-weight: normal; font-style: normal; text-decoration: none; color: rgb(0,0,0); margin-top: 0pt; margin-bottom: 0pt; text-indent: 0.0in; margin-left: 0.0in; margin-right: 0.0in; text-align: left; border-style: none; border-width: 0pt; border-color: rgb(0,0,0); padding: 0pt;&quot;&gt;
              &lt;div&gt;
                &lt;div style=&quot;font-family: tahoma,Helvetica,sans-serif,Lucida Sans Unicode; font-size: 9pt;&quot;&gt;
                  &lt;table style=&quot;border: 1pt; table-layout: fixed; border-collapse: collapse;&quot; valign=&quot;top&quot;
                    width=&quot;100%&quot;&gt;
                    &lt;col width=&quot;66%&quot;&gt;
                    &lt;col width=&quot;34%&quot;&gt;
                    &lt;tbody style=&quot;margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; text-align: left;&quot;&gt;
                      &lt;tr&gt;
                        &lt;td style=&quot;border: 1pt; padding: 1pt; font-size: 9pt;&quot; valign=&quot;top&quot; colspan=&quot;1&quot;
                          rowspan=&quot;1&quot;&gt;
                          &lt;div&gt; &lt;/div&gt;
                        &lt;/td&gt;
                        &lt;td style=&quot;border: 1pt; padding: 1pt; font-size: 9pt;&quot; valign=&quot;top&quot; colspan=&quot;1&quot;
                          rowspan=&quot;1&quot;&gt;
                          &lt;div&gt; &lt;a name=&quot;_FA09717A-E138-49BD-B628-631BF6352F43&quot;&gt;&lt;/a&gt;
                            &lt;div style=&quot;padding: 4px;&quot;&gt;
                              &lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Problem List/Past Medical History&lt;/span&gt;
                              &lt;a name=&quot;_BD40324B-D662-47D9-8B1B-DDAD6D76AC05&quot;&gt;&lt;/a&gt;
                              &lt;div&gt;
                                &lt;div&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Ongoing&lt;/span&gt;
                                  &lt;div
                                    style=&quot;text-indent: -1em; padding-left: 1em; margin-left: 1em;&quot;&gt;
                                    No qualifying data&lt;/div&gt;
                                &lt;/div&gt;
                                &lt;div&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Historical&lt;/span&gt;
                                  &lt;div
                                    style=&quot;text-indent: -1em; padding-left: 1em; margin-left: 1em;&quot;&gt;
                                    No qualifying data&lt;/div&gt;
                                &lt;/div&gt;
                              &lt;/div&gt;
                            &lt;/div&gt; &lt;a name=&quot;_52D81361-4E0B-4E8A-99D5-1B0F794F4637&quot;&gt;&lt;/a&gt;
                            &lt;div style=&quot;padding: 4px;&quot;&gt;
                              &lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Medications&lt;/span&gt;
                              &lt;a name=&quot;_11DFB3BE-BEED-43D7-8DB5-14EB4FF34BF1&quot;&gt;&lt;/a&gt;
                              &lt;div&gt;
                                &lt;div&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Inpatient&lt;/span&gt;
                                  &lt;div
                                    style=&quot;text-indent: -1em; padding-left: 1em; margin-left: 1em;&quot;&gt;
                                    No active inpatient medications&lt;/div&gt;
                                &lt;/div&gt;
                                &lt;div&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Home&lt;/span&gt;
                                  &lt;div
                                    style=&quot;text-indent: -1em; padding-left: 1em; margin-left: 1em;&quot;&gt;
                                    No active home medications&lt;/div&gt;
                                &lt;/div&gt;
                              &lt;/div&gt;
                            &lt;/div&gt; &lt;a name=&quot;_81F0FF76-C05E-42FD-A633-554B3E6D09B9&quot;&gt;&lt;/a&gt;
                            &lt;div style=&quot;padding: 4px;&quot;&gt;
                              &lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Allergies&lt;/span&gt;
                              &lt;a name=&quot;_FAE94265-06DB-48F4-967B-D5015113C29D&quot;&gt;&lt;/a&gt;
                              &lt;div&gt;No active allergies&lt;/div&gt;
                            &lt;/div&gt; &lt;a name=&quot;_9D8442BB-F441-4DD0-8DB9-7C78159E7F0D&quot;&gt;&lt;/a&gt;
                            &lt;div style=&quot;padding: 4px;&quot;&gt;
                              &lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Social History&lt;/span&gt;
                              &lt;a name=&quot;_871C20B8-FDC2-4702-B798-4347E71C8748&quot;&gt;&lt;/a&gt;
                              &lt;div&gt; &lt;a name=&quot;_5DFACA46-6DAE-4DCF-AFE2-D2A71AFE0151&quot;&gt;&lt;/a&gt;
                                &lt;div&gt;
                                  &lt;div&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Tobacco&lt;/span&gt;
                                  &lt;/div&gt;
                                  &lt;div style=&quot;margin-left: 1em;&quot;&gt;
                                    &lt;div&gt;Smoking tobacco use: Former smoker, quit more than 30
                                      days ago. 12 year(s)., 12/26/2019&lt;/div&gt;
                                  &lt;/div&gt;
                                &lt;/div&gt;
                              &lt;/div&gt;
                            &lt;/div&gt; &lt;a name=&quot;_8E6C24E5-AC1B-4947-9281-50F721341424&quot;&gt;&lt;/a&gt;
                            &lt;div style=&quot;padding: 4px;&quot;&gt;
                              &lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Family History&lt;/span&gt;
                              &lt;a name=&quot;_3C7793DF-F772-48FF-B2FB-FEB3997C9A42&quot;&gt;&lt;/a&gt;
                              &lt;div&gt; &lt;a name=&quot;_E5412A71-A44F-462C-AC36-200716838039&quot;&gt;&lt;/a&gt;
                                &lt;div style=&quot;text-indent: -1em; padding-left: 1em;&quot;&gt;Heart attack:
                                  Father (Dx at 78).&lt;/div&gt; &lt;a
                                  name=&quot;_4A7050E7-AF01-4A47-8B8C-942DDF3EAB15&quot;&gt;&lt;/a&gt;
                                &lt;div style=&quot;text-indent: -1em; padding-left: 1em;&quot;&gt;Hypertension:
                                  Father (Dx at 78).&lt;/div&gt;
                              &lt;/div&gt;
                            &lt;/div&gt; &lt;a name=&quot;_B8A58BCC-65D0-4460-8594-78834018A6B6&quot;&gt;&lt;/a&gt;
                            &lt;div style=&quot;padding: 4px;&quot;&gt;
                              &lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Immunizations&lt;/span&gt;
                              &lt;a name=&quot;_A0AAD057-2C28-4C89-9058-729D84DE7922&quot;&gt;&lt;/a&gt;
                              &lt;div&gt;
                                &lt;table
                                  style=&quot;border: 1px solid rgb(0, 0, 0); table-layout: auto; border-collapse: collapse;&quot;
                                  valign=&quot;top&quot;&gt;
                                  &lt;thead
                                    style=&quot;margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; text-align: left;&quot;&gt;
                                    &lt;tr&gt;
                                      &lt;td style=&quot;font-weight: bold; text-align: center; border: 1pt; padding: 0px 5px 0px 6px; border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid; background-color: rgb(244, 244, 244);&quot;
                                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                                        &lt;div&gt;Vaccine&lt;/div&gt;
                                      &lt;/td&gt;
                                      &lt;td style=&quot;font-weight: bold; text-align: center; border: 1pt; padding: 0px 5px 0px 6px; border-bottom-color: rgb(0, 0, 0); border-left-color: rgb(0, 0, 0); border-bottom-width: 1px; border-left-width: 1px; border-bottom-style: solid; border-left-style: solid; background-color: rgb(244, 244, 244);&quot;
                                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                                        &lt;div&gt;Date&lt;/div&gt;
                                      &lt;/td&gt;
                                      &lt;td style=&quot;font-weight: bold; text-align: center; border: 1pt; padding: 0px 5px 0px 6px; border-bottom-color: rgb(0, 0, 0); border-left-color: rgb(0, 0, 0); border-bottom-width: 1px; border-left-width: 1px; border-bottom-style: solid; border-left-style: solid; background-color: rgb(244, 244, 244);&quot;
                                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                                        &lt;div&gt;Status&lt;/div&gt;
                                      &lt;/td&gt;
                                    &lt;/tr&gt;
                                  &lt;/thead&gt;
                                  &lt;tbody
                                    style=&quot;margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; text-align: left;&quot;&gt;
                                    &lt;tr&gt;
                                      &lt;td style=&quot;border: 1pt; padding: 0px 5px; border-top-color: rgb(0, 0, 0); border-top-width: 1px; border-top-style: solid;&quot;
                                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                                        &lt;div&gt;influenza virus vaccine, live&lt;/div&gt;
                                      &lt;/td&gt;
                                      &lt;td style=&quot;border: 1pt; padding: 0px 5px; border-top-color: rgb(0, 0, 0); border-left-color: rgb(0, 0, 0); border-top-width: 1px; border-left-width: 1px; border-top-style: solid; border-left-style: solid;&quot;
                                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                                        &lt;div&gt;2019&lt;/div&gt;
                                      &lt;/td&gt;
                                      &lt;td style=&quot;border: 1pt; padding: 0px 5px; border-top-color: rgb(0, 0, 0); border-left-color: rgb(0, 0, 0); border-top-width: 1px; border-left-width: 1px; border-top-style: solid; border-left-style: solid;&quot;
                                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                                        &lt;div&gt;Recorded&lt;/div&gt;
                                      &lt;/td&gt;
                                    &lt;/tr&gt;
                                    &lt;tr style=&quot;background-color: rgb(244, 244, 244);&quot;&gt;
                                      &lt;td style=&quot;border: 1pt; padding: 0px 5px; border-top-color: rgb(0, 0, 0); border-top-width: 1px; border-top-style: solid;&quot;
                                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                                        &lt;div&gt;tetanus toxoid&lt;/div&gt;
                                      &lt;/td&gt;
                                      &lt;td style=&quot;border: 1pt; padding: 0px 5px; border-top-color: rgb(0, 0, 0); border-left-color: rgb(0, 0, 0); border-top-width: 1px; border-left-width: 1px; border-top-style: solid; border-left-style: solid;&quot;
                                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                                        &lt;div&gt;1982&lt;/div&gt;
                                      &lt;/td&gt;
                                      &lt;td style=&quot;border: 1pt; padding: 0px 5px; border-top-color: rgb(0, 0, 0); border-left-color: rgb(0, 0, 0); border-top-width: 1px; border-left-width: 1px; border-top-style: solid; border-left-style: solid;&quot;
                                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                                        &lt;div&gt;Recorded&lt;/div&gt;
                                      &lt;/td&gt;
                                    &lt;/tr&gt;
                                  &lt;/tbody&gt;
                                &lt;/table&gt;
                              &lt;/div&gt;
                            &lt;/div&gt; &lt;a name=&quot;_2ED24E58-E40B-4945-A272-BEBDC1CD80FC&quot;&gt;&lt;/a&gt;
                            &lt;div style=&quot;padding: 4px;&quot;&gt;
                              &lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Diagnostic Results&lt;/span&gt;
                              &lt;a name=&quot;_61500AA6-4068-421B-9AC5-CA3294098598&quot;&gt;&lt;/a&gt;
                              &lt;div&gt;X-Ray Ankle
                                (right):&lt;br&gt; CLINICAL HISTORY: Twisted right ankle, pain in joint&lt;br&gt; Routine 3-view radiographs of the right ankle were obtained.  No comparison films were available for this examination.  Normal anatomic alignment of the the ankle structure.  No fracture or dislocation is seen.  Bone mineralization is normal.  No arthritis is observed in the joint.&lt;br&gt; IMPRESSION 1. Normal.  No fracture is seen.&lt;/div&gt;
                              &lt;/div&gt;
                            &lt;/div&gt;
                        &lt;/td&gt;
                      &lt;/tr&gt;
                    &lt;/tbody&gt;
                  &lt;/table&gt;
                &lt;/div&gt;
                &lt;div
                  style=&quot;font-family: tahoma,Helvetica,sans-serif,Lucida Sans Unicode; font-size: 9pt; margin-top: 1em;&quot;&gt;
                &lt;/div&gt;
              &lt;/div&gt;
              &lt;div style=&quot;white-space: pre-wrap;&quot;&gt;
              &lt;/div&gt;
            &lt;/div&gt;
            &lt;div class=&quot;sign-line-header&quot;
              style=&quot;font-family: tahoma,arial; font-size: 10pt; font-weight: bold; white-space: pre-wrap;&quot;&gt;Signature
              Line&lt;div class=&quot;sign-line&quot;
                style=&quot;font-family: tahoma,arial; font-weight: normal; font-size: 10pt; white-space: pre-wrap;&quot;&gt;
                Electronically Signed on 12/26/19 03:35 PM
                ________________________________________________________
                Cerner Test, Physician - Hospitalist Cerner&lt;/div&gt;
              &lt;div style=&quot;white-space: pre-wrap;&quot;&gt;
              &lt;/div&gt;
            &lt;/div&gt;
          &lt;/div&gt;
          &lt;div class=&quot;heading&quot;&gt;
            &lt;div class=&quot;content&quot;
              style=&quot;font-family: Times,serif,Lucida Sans Unicode; font-size: 12pt; font-weight: normal; font-style: normal; text-decoration: none; color: rgb(0,0,0); margin-top: 0pt; margin-bottom: 0pt; text-indent: 0.0in; margin-left: 0.0in; margin-right: 0.0in; text-align: left; border-style: none; border-width: 0pt; border-color: rgb(0,0,0); padding: 0pt;&quot;&gt;
              &lt;div&gt;
                &lt;table
                  style=&quot;border: 1pt; table-layout: fixed; font-family: tahoma,Helvetica,sans-serif,Lucida Sans Unicode; font-size: 10pt; border-collapse: collapse;&quot;
                  valign=&quot;top&quot;&gt;
                  &lt;tbody style=&quot;margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; text-align: left;&quot;&gt;
                    &lt;tr&gt;
                      &lt;td style=&quot;font-weight: normal; text-align: left; border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot;
                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Result type:&lt;/div&gt;
                      &lt;/td&gt;
                      &lt;td style=&quot;border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot; valign=&quot;top&quot;
                        colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Radiology Reports&lt;/div&gt;
                      &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                      &lt;td style=&quot;font-weight: normal; text-align: left; border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot;
                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Result date:&lt;/div&gt;
                      &lt;/td&gt;
                      &lt;td style=&quot;border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot; valign=&quot;top&quot;
                        colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;December 26, 2019 15:35 CST&lt;/div&gt;
                      &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                      &lt;td style=&quot;font-weight: normal; text-align: left; border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot;
                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Result status:&lt;/div&gt;
                      &lt;/td&gt;
                      &lt;td style=&quot;border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot; valign=&quot;top&quot;
                        colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Auth (Verified)&lt;/div&gt;
                      &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                      &lt;td style=&quot;font-weight: normal; text-align: left; border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot;
                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Result title:&lt;/div&gt;
                      &lt;/td&gt;
                      &lt;td style=&quot;border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot; valign=&quot;top&quot;
                        colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Admission H &amp; P - Radiology&lt;/div&gt;
                      &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                      &lt;td style=&quot;font-weight: normal; text-align: left; border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot;
                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Performed by:&lt;/div&gt;
                      &lt;/td&gt;
                      &lt;td style=&quot;border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot; valign=&quot;top&quot;
                        colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Cerner Test, Physician - Hospitalist Cerner on December 26, 2019 15:35 CST
                        &lt;/div&gt;
                      &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                      &lt;td style=&quot;font-weight: normal; text-align: left; border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot;
                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Verified by:&lt;/div&gt;
                      &lt;/td&gt;
                      &lt;td style=&quot;border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot; valign=&quot;top&quot;
                        colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Cerner Test, Physician - Hospitalist Cerner on December 26, 2019 15:35 CST
                        &lt;/div&gt;
                      &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                      &lt;td style=&quot;font-weight: normal; text-align: left; border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot;
                        valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;Encounter info:&lt;/div&gt;
                      &lt;/td&gt;
                      &lt;td style=&quot;border: 1pt; padding: 0px 25px 0px 0px; word-wrap: break-word;&quot; valign=&quot;top&quot;
                        colspan=&quot;1&quot; rowspan=&quot;1&quot;&gt;
                        &lt;div&gt;00000015951, MX Hospital, Inpatient, 12/26/2019 - 1/7/2020&lt;/div&gt;
                      &lt;/td&gt;
                    &lt;/tr&gt;
                  &lt;/tbody&gt;
                &lt;/table&gt;
              &lt;/div&gt;
              &lt;div style=&quot;white-space: pre-wrap;&quot;&gt;
              &lt;/div&gt;
            &lt;/div&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/body&gt;

      &lt;/html&gt;'

  # TODO: No records
    DSTU2_BINARY_CCD_JSON_ENTRY ||= {
      "resourceType": "Binary",
      "id": "d1ba1b55-1fe7-47bc-9c94-7393d2c25028",
      "meta": {
        "lastUpdated": "2017-01-03T10:29:43-06:00"
      },
      "contentType": "application/xml",
      "content": "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48P3htbC1zdHlsZXNoZWV0IHR5cGU9InRleHQveHNsIiBocmVmPSJodHRwOi8vd3d3LmNlcm5lci5jb20vY2RhX3N0eWxlc2hlZXQvIj8+PENsaW5pY2FsRG9jdW1lbnQgeG1sbnM9InVybjpobDctb3JnOnYzIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4bWxuczpvdXRDZFV0aWw9ImphdmE6Y29tLmNlcm5lci5mc2kuY29kZS50cmFuc2xhdGlvbi5PdXRib3VuZENvZGVVdGlsaXR5IiB4bWxuczpjZFVETz0iamF2YTpjb20uY2VybmVyLmZzaS51ZG8uZGF0YXR5cGVzLkNvZGVVRE8iIHhtbG5zOnNkdGM9InVybjpobDctb3JnOnNkdGMiIHhtbG5zOm9pZEVudGl0eT0iamF2YTpjb20uY2VybmVyLmZzaS5jb2RlLnRyYW5zbGF0aW9uLk9JREVudGl0eVR5cGUiIHhzaTpzY2hlbWFMb2NhdGlvbj0idXJuOmhsNy1vcmc6djMuLi8uLi8uLi9DREElMjBSMi9jZGEtc2NoZW1hcy1hbmQtc2FtcGxlcy9pbmZyYXN0cnVjdHVyZS9jZGEvQ0RBLnhzZCIgY2xhc3NDb2RlPSJET0NDTElOIiBtb29kQ29kZT0iRVZOIj48cmVhbG1Db2RlIGNvZGU9IlVTIi8+PHR5cGVJZCByb290PSIyLjE2Ljg0MC4xLjExMzg4My4xLjMiIGV4dGVuc2lvbj0iUE9DRF9IRDAwMDA0MCIvPjx0ZW1wbGF0ZUlkIHJvb3Q9IjIuMTYuODQwLjEuMTEzODgzLjEwLjIwLjIyLjEuMSIvPjx0ZW1wbGF0ZUlkIHJvb3Q9IjIuMTYuODQwLjEuMTEzODgzLjEwLjIwLjIyLjEuMiIvPjxpZCByb290PSIyLjMuMi4zLjIuMy45OTkzNjIiIGV4dGVuc2lvbj0iMTk1MDAwNyIvPjxjb2RlIGNvZGU9IjM0MTMzLTkiIGNvZGVTeXN0ZW09IjIuMTYuODQwLjEuMTEzODgzLjYuMSIgZGlzcGxheU5hbWU9IlN1bW1hcml6YXRpb24gb2YgZXBpc29kZSBub3RlIi8+PHRpdGxlPlRyYW5zaXRpb24gb2YgQ2FyZS9SZWZlcnJhbCBTdW1tYXJ5PC90aXRsZT48ZWZmZWN0aXZlVGltZSB2YWx1ZT0iMjAxNzAxMDMxMDMwMjMuMDAzLTA2MDAiLz48Y29uZmlkZW50aWFsaXR5Q29kZSBjb2RlPSJOIiBkaXNwbGF5TmFtZT0iTm9ybWFsIiBjb2RlU3lzdGVtPSIyLjE2Ljg0MC4xLjExMzg4My41LjI1Ii8+PGxhbmd1YWdlQ29kZSBjb2RlPSJlbi1VUyIvPjxyZWNvcmRUYXJnZXQgdHlwZUNvZGU9IlJDVCIgY29udGV4dENvbnRyb2xDb2RlPSJPUCI+PHBhdGllbnRSb2xlIGNsYXNzQ29kZT0iUEFUIj48aWQgcm9vdD0iMi4yLjIuMi4yLjIiIGV4dGVuc2lvbj0iMTAwMDAxNjciIGFzc2lnbmluZ0F1dGhvcml0eU5hbWU9IkJXTUMgTVJOIi8+PGFkZHIgbnVsbEZsYXZvcj0iVU5LIi8+PHRlbGVjb20gbnVsbEZsYXZvcj0iTkkiLz48cGF0aWVudCBjbGFzc0NvZGU9IlBTTiIgZGV0ZXJtaW5lckNvZGU9IklOU1RBTkNFIj48bmFtZSB1c2U9IkwiPjxnaXZlbj5IZXJtaW9uZTwvZ2l2ZW4+PGZhbWlseT5HcmFuZ2VyPC9mYW1pbHk+PC9uYW1lPjxhZG1pbmlzdHJhdGl2ZUdlbmRlckNvZGUgY29kZT0iRiIgY29kZVN5c3RlbT0iMi4xNi44NDAuMS4xMTM4ODMuNS4xIiBjb2RlU3lzdGVtTmFtZT0iYWRtaW5pc3RyYXRpdmVHZW5kZXIiIGRpc3BsYXlOYW1lPSJGZW1hbGUiPjxvcmlnaW5hbFRleHQ+RmVtYWxlPC9vcmlnaW5hbFRleHQ+PC9hZG1pbmlzdHJhdGl2ZUdlbmRlckNvZGU+PGJpcnRoVGltZSB2YWx1ZT0iMTk4MzAzMTUiLz48cmFjZUNvZGUgbnVsbEZsYXZvcj0iTkkiLz48ZXRobmljR3JvdXBDb2RlIG51bGxGbGF2b3I9Ik5JIi8+PGxhbmd1YWdlQ29tbXVuaWNhdGlvbj48bGFuZ3VhZ2VDb2RlIG51bGxGbGF2b3I9Ik5JIi8+PC9sYW5ndWFnZUNvbW11bmljYXRpb24+PC9wYXRpZW50PjwvcGF0aWVudFJvbGU+PC9yZWNvcmRUYXJnZXQ+PGF1dGhvciB0eXBlQ29kZT0iQVVUIiBjb250ZXh0Q29udHJvbENvZGU9Ik9QIj48dGltZSB2YWx1ZT0iMjAxNzAxMDMxMDMwMjMuMDAzLTA2MDAiLz48YXNzaWduZWRBdXRob3IgY2xhc3NDb2RlPSJBU1NJR05FRCI+PGlkIG51bGxGbGF2b3I9Ik5JIi8+PGFkZHIgbnVsbEZsYXZvcj0iTkkiLz48dGVsZWNvbSBudWxsRmxhdm9yPSJOSSIvPjxhc3NpZ25lZEF1dGhvcmluZ0RldmljZT48bWFudWZhY3R1cmVyTW9kZWxOYW1lPkNlcm5lciBDb3Jwb3JhdGlvbjwvbWFudWZhY3R1cmVyTW9kZWxOYW1lPjxzb2Z0d2FyZU5hbWU+TWlsbGVubml1bSBDbGluaWNhbCBEb2N1bWVudCBHZW5lcmF0b3I8L3NvZnR3YXJlTmFtZT48L2Fzc2lnbmVkQXV0aG9yaW5nRGV2aWNlPjxyZXByZXNlbnRlZE9yZ2FuaXphdGlvbiBjbGFzc0NvZGU9Ik9SRyIgZGV0ZXJtaW5lckNvZGU9IklOU1RBTkNFIj48aWQgcm9vdD0iMi4zLjIuMy4yLjMiLz48bmFtZT5CYXNlbGluZSBXZXN0IE1lZGljYWwgQ2VudGVyPC9uYW1lPjx0ZWxlY29tIHVzZT0iV1AiIHZhbHVlPSJ0ZWw6KDgxNik1NTUtMjEyMSIvPjxhZGRyIHVzZT0iV1AiPjxzdHJlZXRBZGRyZXNzTGluZT44IFByaXZldHQgRHJpdmU8L3N0cmVldEFkZHJlc3NMaW5lPjxjaXR5PlN1c3NlczwvY2l0eT48c3RhdGU+TE88L3N0YXRlPjxwb3N0YWxDb2RlPjExMjQyPC9wb3N0YWxDb2RlPjxjb3VudHJ5PlVLPC9jb3VudHJ5PjwvYWRkcj48L3JlcHJlc2VudGVkT3JnYW5pemF0aW9uPjwvYXNzaWduZWRBdXRob3I+PC9hdXRob3I+PGRvY3VtZW50YXRpb25PZiB0eXBlQ29kZT0iRE9DIj48c2VydmljZUV2ZW50IGNsYXNzQ29kZT0iUENQUiIgbW9vZENvZGU9IkVWTiI+PGVmZmVjdGl2ZVRpbWU+PGxvdyB2YWx1ZT0iMjAxNDA4MjMxNTQ1MzQuMDAwLTA1MDAiLz48aGlnaCB2YWx1ZT0iMjAxNjEyMjkxMzA4NDEuMDAwLTA2MDAiLz48L2VmZmVjdGl2ZVRpbWU+PHBlcmZvcm1lciB0eXBlQ29kZT0iUFJGIj48ZnVuY3Rpb25Db2RlIGNvZGU9IlBDUCIgY29kZVN5c3RlbT0iMi4xNi44NDAuMS4xMTM4ODMuNS44OCIgY29kZVN5c3RlbU5hbWU9IkhMNyBQYXJ0aWNpcGF0aW9uRnVuY3Rpb24iIGRpc3BsYXlOYW1lPSJwcmltYXJ5IGNhcmUgcGh5c2ljaWFuIi8+PGFzc2lnbmVkRW50aXR5PjxpZCBudWxsRmxhdm9yPSJOSSIvPjwvYXNzaWduZWRFbnRpdHk+PC9wZXJmb3JtZXI+PC9zZXJ2aWNlRXZlbnQ+PC9kb2N1bWVudGF0aW9uT2Y+PGNvbXBvbmVudCB0eXBlQ29kZT0iQ09NUCI+PHN0cnVjdHVyZWRCb2R5IGNsYXNzQ29kZT0iRE9DQk9EWSIgbW9vZENvZGU9IkVWTiI+PGNvbXBvbmVudCB0eXBlQ29kZT0iQ09NUCIgY29udGV4dENvbmR1Y3Rpb25JbmQ9InRydWUiPjxzZWN0aW9uIGNsYXNzQ29kZT0iRE9DU0VDVCIgbW9vZENvZGU9IkVWTiI+PHRlbXBsYXRlSWQgcm9vdD0iMi4xNi44NDAuMS4xMTM4ODMuMTAuMjAuMjIuMi41Ii8+PHRlbXBsYXRlSWQgcm9vdD0iMi4xNi44NDAuMS4xMTM4ODMuMTAuMjAuMjIuMi41LjEiLz48Y29kZSBjb2RlPSIxMTQ1MC00IiBjb2RlU3lzdGVtPSIyLjE2Ljg0MC4xLjExMzg4My42LjEiIGRpc3BsYXlOYW1lPSJQcm9ibGVtIExpc3QiIGNvZGVTeXN0ZW1OYW1lPSJMT0lOQyIvPjx0aXRsZT5Qcm9ibGVtIExpc3Q8L3RpdGxlPjx0ZXh0Pjx0YWJsZSBib3JkZXI9IjEiIHdpZHRoPSI5NSUiPjxjb2xncm91cD48Y29sIHdpZHRoPSIyMCUiLz48Y29sIHdpZHRoPSIyMCUiLz48Y29sIHdpZHRoPSIyMCUiLz48Y29sIHdpZHRoPSIyMCUiLz48Y29sIHdpZHRoPSIyMCUiLz48L2NvbGdyb3VwPjx0aGVhZD48dHI+PHRoPkNvbmRpdGlvbjwvdGg+PHRoPkVmZmVjdGl2ZSBEYXRlczwvdGg+PHRoPlN0YXR1czwvdGg+PHRoPkhlYWx0aCBTdGF0dXM8L3RoPjx0aD5JbmZvcm1hbnQ8L3RoPjwvdHI+PC90aGVhZD48dGJvZHk+PHRyPjx0ZD48Y29udGVudCBJRD0iUFJPQkxFTTE1Njc0MDIiPkJsb29keSBzdG9vbDwvY29udGVudD48L3RkPjx0ZD4gPC90ZD48dGQ+PGNvbnRlbnQgSUQ9IlBST0JTVDE1Njc0MDIiPkFjdGl2ZTwvY29udGVudD48L3RkPjx0ZD48Y29udGVudCBJRD0iUFJPQkhTVDE1Njc0MDIiPiA8L2NvbnRlbnQ+PC90ZD48dGQ+IDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PC90ZXh0PjxlbnRyeSB0eXBlQ29kZT0iRFJJViIgY29udGV4dENvbmR1Y3Rpb25JbmQ9InRydWUiPjxhY3QgY2xhc3NDb2RlPSJBQ1QiIG1vb2RDb2RlPSJFVk4iPjx0ZW1wbGF0ZUlkIHJvb3Q9IjIuMTYuODQwLjEuMTEzODgzLjEwLjIwLjIyLjQuMyIvPjxpZCByb290PSJDMkQxN0REQS1FMzY0LTQwQjMtODg4Ni1DMURFRjBENDQxMTIiLz48Y29kZSBjb2RlPSJDT05DIiBjb2RlU3lzdGVtPSIyLjE2Ljg0MC4xLjExMzg4My41LjYiIGRpc3BsYXlOYW1lPSJDb25jZXJuIiBjb2RlU3lzdGVtTmFtZT0iSEw3QWN0Q2xhc3MiLz48c3RhdHVzQ29kZSBjb2RlPSJhY3RpdmUiLz48ZWZmZWN0aXZlVGltZT48bG93IG51bGxGbGF2b3I9Ik5JIi8+PGhpZ2ggbnVsbEZsYXZvcj0iTkkiLz48L2VmZmVjdGl2ZVRpbWU+PGVudHJ5UmVsYXRpb25zaGlwIHR5cGVDb2RlPSJTVUJKIiBpbnZlcnNpb25JbmQ9ImZhbHNlIj48b2JzZXJ2YXRpb24gY2xhc3NDb2RlPSJPQlMiIG1vb2RDb2RlPSJFVk4iPjx0ZW1wbGF0ZUlkIHJvb3Q9IjIuMTYuODQwLjEuMTEzODgzLjEwLjIwLjIyLjQuNCIvPjxpZCByb290PSI3NjAzNDRDNC00MUQ2LTQ2RTMtOEQ1NC04NjU4RkY1MDk1OTkiLz48Y29kZSBjb2RlPSI1NTYwNzAwNiIgZGlzcGxheU5hbWU9IlByb2JsZW0iIGNvZGVTeXN0ZW09IjIuMTYuODQwLjEuMTEzODgzLjYuOTYiLz48dGV4dD48cmVmZXJlbmNlIHZhbHVlPSIjUFJPQkxFTTE1Njc0MDIiLz48L3RleHQ+PHN0YXR1c0NvZGUgY29kZT0iY29tcGxldGVkIi8+PGVmZmVjdGl2ZVRpbWU+PGxvdyBudWxsRmxhdm9yPSJOSSIvPjxoaWdoIG51bGxGbGF2b3I9Ik5JIi8+PC9lZmZlY3RpdmVUaW1lPjx2YWx1ZSB4c2k6dHlwZT0iQ0QiIGNvZGU9IjQwNTcyOTAwOCIgY29kZVN5c3RlbT0iMi4xNi44NDAuMS4xMTM4ODMuNi45NiIgY29kZVN5c3RlbU5hbWU9IlNOT01FRCBDVCIgZGlzcGxheU5hbWU9IkhlbWF0b2NoZXppYSAoZmluZGluZykiPjxvcmlnaW5hbFRleHQ+PHJlZmVyZW5jZSB2YWx1ZT0iI1BST0JMRU0xNTY3NDAyIi8+PC9vcmlnaW5hbFRleHQ+PC92YWx1ZT48YXV0aG9yPjx0aW1lIHZhbHVlPSIyMDE0MTAyMTEzNDk1OC4wMDAtMDUwMCIvPjxhc3NpZ25lZEF1dGhvciBjbGFzc0NvZGU9IkFTU0lHTkVEIj48aWQgbnVsbEZsYXZvcj0iTkkiLz48YWRkciBudWxsRmxhdm9yPSJVTksiLz48YXNzaWduZWRQZXJzb24+PG5hbWU+PGdpdmVuIG51bGxGbGF2b3I9Ik5BIi8+PGZhbWlseSBudWxsRmxhdm9yPSJOQSIvPjwvbmFtZT48L2Fzc2lnbmVkUGVyc29uPjwvYXNzaWduZWRBdXRob3I+PC9hdXRob3I+PGVudHJ5UmVsYXRpb25zaGlwIHR5cGVDb2RlPSJSRUZSIj48b2JzZXJ2YXRpb24gY2xhc3NDb2RlPSJPQlMiIG1vb2RDb2RlPSJFVk4iPjx0ZW1wbGF0ZUlkIHJvb3Q9IjIuMTYuODQwLjEuMTEzODgzLjEwLjIwLjIyLjQuNiIvPjxjb2RlIGNvZGU9IjMzOTk5LTQiIGNvZGVTeXN0ZW09IjIuMTYuODQwLjEuMTEzODgzLjYuMSIgY29kZVN5c3RlbU5hbWU9IkxPSU5DIiBkaXNwbGF5TmFtZT0iU3RhdHVzIi8+PHRleHQ+PHJlZmVyZW5jZSB2YWx1ZT0iI1BST0JTVDE1Njc0MDIiLz48L3RleHQ+PHN0YXR1c0NvZGUgY29kZT0iY29tcGxldGVkIi8+PHZhbHVlIHhzaTp0eXBlPSJDRCIgY29kZT0iNTU1NjEwMDMiIGNvZGVTeXN0ZW09IjIuMTYuODQwLjEuMTEzODgzLjYuOTYiIGNvZGVTeXN0ZW1OYW1lPSJTTk9NRUQgQ1QiPjxvcmlnaW5hbFRleHQ+PHJlZmVyZW5jZSB2YWx1ZT0iI1BST0JTVDE1Njc0MDIiLz48L29yaWdpbmFsVGV4dD48L3ZhbHVlPjwvb2JzZXJ2YXRpb24+PC9lbnRyeVJlbGF0aW9uc2hpcD48L29ic2VydmF0aW9uPjwvZW50cnlSZWxhdGlvbnNoaXA+PC9hY3Q+PC9lbnRyeT48L3NlY3Rpb24+PC9jb21wb25lbnQ+PC9zdHJ1Y3R1cmVkQm9keT48L2NvbXBvbmVudD48L0NsaW5pY2FsRG9jdW1lbnQ+"
    }
    # TODO: No records
    DSTU2_BINARY_CCD_XML ||= '&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
&lt;?xml-stylesheet type=&quot;text/xsl&quot; href=&quot;http://www.cerner.com/cda_stylesheet/&quot;?&gt;
&lt;ClinicalDocument xmlns=&quot;urn:hl7-org:v3&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns:outCdUtil=&quot;java:com.cerner.fsi.code.translation.OutboundCodeUtility&quot; xmlns:cdUDO=&quot;java:com.cerner.fsi.udo.datatypes.CodeUDO&quot; xmlns:sdtc=&quot;urn:hl7-org:sdtc&quot; xmlns:oidEntity=&quot;java:com.cerner.fsi.code.translation.OIDEntityType&quot; xsi:schemaLocation=&quot;urn:hl7-org:v3../../../CDA%20R2/cda-schemas-and-samples/infrastructure/cda/CDA.xsd&quot; classCode=&quot;DOCCLIN&quot; moodCode=&quot;EVN&quot;&gt;
    &lt;realmCode code=&quot;US&quot;/&gt;
    &lt;typeId root=&quot;2.16.840.1.113883.1.3&quot; extension=&quot;POCD_HD000040&quot;/&gt;
    &lt;templateId root=&quot;2.16.840.1.113883.10.20.22.1.1&quot;/&gt;
    &lt;templateId root=&quot;2.16.840.1.113883.10.20.22.1.2&quot;/&gt;
    &lt;id root=&quot;2.3.2.3.2.3.999362&quot; extension=&quot;1950007&quot;/&gt;
    &lt;code code=&quot;34133-9&quot; codeSystem=&quot;2.16.840.1.113883.6.1&quot; displayName=&quot;Summarization of episode note&quot;/&gt;
    &lt;title&gt;Transition of Care/Referral Summary&lt;/title&gt;
    &lt;effectiveTime value=&quot;20170103103023.003-0600&quot;/&gt;
    &lt;confidentialityCode code=&quot;N&quot; displayName=&quot;Normal&quot; codeSystem=&quot;2.16.840.1.113883.5.25&quot;/&gt;
    &lt;languageCode code=&quot;en-US&quot;/&gt;
    &lt;recordTarget typeCode=&quot;RCT&quot; contextControlCode=&quot;OP&quot;&gt;
        &lt;patientRole classCode=&quot;PAT&quot;&gt;
            &lt;id root=&quot;2.2.2.2.2.2&quot; extension=&quot;10000167&quot; assigningAuthorityName=&quot;BWMC MRN&quot;/&gt;
            &lt;addr nullFlavor=&quot;UNK&quot;/&gt;
            &lt;telecom nullFlavor=&quot;NI&quot;/&gt;
            &lt;patient classCode=&quot;PSN&quot; determinerCode=&quot;INSTANCE&quot;&gt;
                &lt;name use=&quot;L&quot;&gt;
                    &lt;given&gt;Hermione&lt;/given&gt;
                    &lt;family&gt;Granger&lt;/family&gt;
                &lt;/name&gt;
                &lt;administrativeGenderCode code=&quot;F&quot; codeSystem=&quot;2.16.840.1.113883.5.1&quot; codeSystemName=&quot;administrativeGender&quot; displayName=&quot;Female&quot;&gt;
                    &lt;originalText&gt;Female&lt;/originalText&gt;
                &lt;/administrativeGenderCode&gt;
                &lt;birthTime value=&quot;19830315&quot;/&gt;
                &lt;raceCode nullFlavor=&quot;NI&quot;/&gt;
                &lt;ethnicGroupCode nullFlavor=&quot;NI&quot;/&gt;
                &lt;languageCommunication&gt;
                    &lt;languageCode nullFlavor=&quot;NI&quot;/&gt;
                &lt;/languageCommunication&gt;
            &lt;/patient&gt;
        &lt;/patientRole&gt;
    &lt;/recordTarget&gt;
    &lt;author typeCode=&quot;AUT&quot; contextControlCode=&quot;OP&quot;&gt;
        &lt;time value=&quot;20170103103023.003-0600&quot;/&gt;
        &lt;assignedAuthor classCode=&quot;ASSIGNED&quot;&gt;
            &lt;id nullFlavor=&quot;NI&quot;/&gt;
            &lt;addr nullFlavor=&quot;NI&quot;/&gt;
            &lt;telecom nullFlavor=&quot;NI&quot;/&gt;
            &lt;assignedAuthoringDevice&gt;
                &lt;manufacturerModelName&gt;Cerner Corporation&lt;/manufacturerModelName&gt;
                &lt;softwareName&gt;Millennium Clinical Document Generator&lt;/softwareName&gt;
            &lt;/assignedAuthoringDevice&gt;
            &lt;representedOrganization classCode=&quot;ORG&quot; determinerCode=&quot;INSTANCE&quot;&gt;
                &lt;id root=&quot;2.3.2.3.2.3&quot;/&gt;
                &lt;name&gt;Baseline West Medical Center&lt;/name&gt;
                &lt;telecom use=&quot;WP&quot; value=&quot;tel:(816)555-2121&quot;/&gt;
                &lt;addr use=&quot;WP&quot;&gt;
                    &lt;streetAddressLine&gt;8 Privett Drive&lt;/streetAddressLine&gt;
                    &lt;city&gt;Sussex&lt;/city&gt;
                    &lt;state&gt;LO&lt;/state&gt;
                    &lt;postalCode&gt;11242&lt;/postalCode&gt;
                    &lt;country&gt;UK&lt;/country&gt;
                &lt;/addr&gt;
            &lt;/representedOrganization&gt;
        &lt;/assignedAuthor&gt;
    &lt;/author&gt;
    &lt;documentationOf typeCode=&quot;DOC&quot;&gt;
        &lt;serviceEvent classCode=&quot;PCPR&quot; moodCode=&quot;EVN&quot;&gt;
            &lt;effectiveTime&gt;
                &lt;low value=&quot;20140823154534.000-0500&quot;/&gt;
                &lt;high value=&quot;20161229130841.000-0600&quot;/&gt;
            &lt;/effectiveTime&gt;
            &lt;performer typeCode=&quot;PRF&quot;&gt;
                &lt;functionCode code=&quot;PCP&quot; codeSystem=&quot;2.16.840.1.113883.5.88&quot; codeSystemName=&quot;HL7 ParticipationFunction&quot; displayName=&quot;primary care physician&quot;/&gt;
                &lt;assignedEntity&gt;
                    &lt;id nullFlavor=&quot;NI&quot;/&gt;
                &lt;/assignedEntity&gt;
            &lt;/performer&gt;
        &lt;/serviceEvent&gt;
    &lt;/documentationOf&gt;
    &lt;component typeCode=&quot;COMP&quot;&gt;
        &lt;structuredBody classCode=&quot;DOCBODY&quot; moodCode=&quot;EVN&quot;&gt;
            &lt;component typeCode=&quot;COMP&quot; contextConductionInd=&quot;true&quot;&gt;
                &lt;section classCode=&quot;DOCSECT&quot; moodCode=&quot;EVN&quot;&gt;
                    &lt;templateId root=&quot;2.16.840.1.113883.10.20.22.2.5&quot;/&gt;
                    &lt;templateId root=&quot;2.16.840.1.113883.10.20.22.2.5.1&quot;/&gt;
                    &lt;code code=&quot;11450-4&quot; codeSystem=&quot;2.16.840.1.113883.6.1&quot; displayName=&quot;Problem List&quot; codeSystemName=&quot;LOINC&quot;/&gt;
                    &lt;title&gt;Problem List&lt;/title&gt;
                    &lt;text&gt;
                        &lt;table border=&quot;1&quot; width=&quot;95%&quot;&gt;
                            &lt;colgroup&gt;
                                &lt;col width=&quot;20%&quot;/&gt;
                                &lt;col width=&quot;20%&quot;/&gt;
                                &lt;col width=&quot;20%&quot;/&gt;
                                &lt;col width=&quot;20%&quot;/&gt;
                                &lt;col width=&quot;20%&quot;/&gt;
                            &lt;/colgroup&gt;
                            &lt;thead&gt;
                                &lt;tr&gt;
                                    &lt;th&gt;Condition&lt;/th&gt;
                                    &lt;th&gt;Effective Dates&lt;/th&gt;
                                    &lt;th&gt;Status&lt;/th&gt;
                                    &lt;th&gt;Health Status&lt;/th&gt;
                                    &lt;th&gt;Informant&lt;/th&gt;
                                &lt;/tr&gt;
                            &lt;/thead&gt;
                            &lt;tbody&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;
                                        &lt;content ID=&quot;PROBLEM1567402&quot;&gt;Bloody stool&lt;/content&gt;
                                    &lt;/td&gt;
                                    &lt;td&gt; &lt;/td&gt;
                                    &lt;td&gt;
                                        &lt;content ID=&quot;PROBST1567402&quot;&gt;Active&lt;/content&gt;
                                    &lt;/td&gt;
                                    &lt;td&gt;
                                        &lt;content ID=&quot;PROBHST1567402&quot;&gt; &lt;/content&gt;
                                    &lt;/td&gt;
                                    &lt;td&gt; &lt;/td&gt;
                                &lt;/tr&gt;
                            &lt;/tbody&gt;
                        &lt;/table&gt;
                    &lt;/text&gt;
                    &lt;entry typeCode=&quot;DRIV&quot; contextConductionInd=&quot;true&quot;&gt;
                        &lt;act classCode=&quot;ACT&quot; moodCode=&quot;EVN&quot;&gt;
                            &lt;templateId root=&quot;2.16.840.1.113883.10.20.22.4.3&quot;/&gt;
                            &lt;id root=&quot;C2D17DDA-E364-40B3-8886-C1DEF0D44112&quot;/&gt;
                            &lt;code code=&quot;CONC&quot; codeSystem=&quot;2.16.840.1.113883.5.6&quot; displayName=&quot;Concern&quot; codeSystemName=&quot;HL7ActClass&quot;/&gt;
                            &lt;statusCode code=&quot;active&quot;/&gt;
                            &lt;effectiveTime&gt;
                                &lt;low nullFlavor=&quot;NI&quot;/&gt;
                                &lt;high nullFlavor=&quot;NI&quot;/&gt;
                            &lt;/effectiveTime&gt;
                            &lt;entryRelationship typeCode=&quot;SUBJ&quot; inversionInd=&quot;false&quot;&gt;
                                &lt;observation classCode=&quot;OBS&quot; moodCode=&quot;EVN&quot;&gt;
                                    &lt;templateId root=&quot;2.16.840.1.113883.10.20.22.4.4&quot;/&gt;
                                    &lt;id root=&quot;760344C4-41D6-46E3-8D54-8658FF509599&quot;/&gt;
                                    &lt;code code=&quot;55607006&quot; displayName=&quot;Problem&quot; codeSystem=&quot;2.16.840.1.113883.6.96&quot;/&gt;
                                    &lt;text&gt;
                                        &lt;reference value=&quot;#PROBLEM1567402&quot;/&gt;
                                    &lt;/text&gt;
                                    &lt;statusCode code=&quot;completed&quot;/&gt;
                                    &lt;effectiveTime&gt;
                                        &lt;low nullFlavor=&quot;NI&quot;/&gt;
                                        &lt;high nullFlavor=&quot;NI&quot;/&gt;
                                    &lt;/effectiveTime&gt;
                                    &lt;value xsi:type=&quot;CD&quot; code=&quot;405729008&quot; codeSystem=&quot;2.16.840.1.113883.6.96&quot; codeSystemName=&quot;SNOMED CT&quot; displayName=&quot;Hematochezia (finding)&quot;&gt;
                                        &lt;originalText&gt;
                                            &lt;reference value=&quot;#PROBLEM1567402&quot;/&gt;
                                        &lt;/originalText&gt;
                                    &lt;/value&gt;
                                    &lt;author&gt;
                                        &lt;time value=&quot;20141021134958.000-0500&quot;/&gt;
                                        &lt;assignedAuthor classCode=&quot;ASSIGNED&quot;&gt;
                                            &lt;id nullFlavor=&quot;NI&quot;/&gt;
                                            &lt;addr nullFlavor=&quot;UNK&quot;/&gt;
                                            &lt;assignedPerson&gt;
                                                &lt;name&gt;
                                                    &lt;given nullFlavor=&quot;NA&quot;/&gt;
                                                    &lt;family nullFlavor=&quot;NA&quot;/&gt;
                                                &lt;/name&gt;
                                            &lt;/assignedPerson&gt;
                                        &lt;/assignedAuthor&gt;
                                    &lt;/author&gt;
                                    &lt;entryRelationship typeCode=&quot;REFR&quot;&gt;
                                        &lt;observation classCode=&quot;OBS&quot; moodCode=&quot;EVN&quot;&gt;
                                            &lt;templateId root=&quot;2.16.840.1.113883.10.20.22.4.6&quot;/&gt;
                                            &lt;code code=&quot;33999-4&quot; codeSystem=&quot;2.16.840.1.113883.6.1&quot; codeSystemName=&quot;LOINC&quot; displayName=&quot;Status&quot;/&gt;
                                            &lt;text&gt;
                                                &lt;reference value=&quot;#PROBST1567402&quot;/&gt;
                                            &lt;/text&gt;
                                            &lt;statusCode code=&quot;completed&quot;/&gt;
                                            &lt;value xsi:type=&quot;CD&quot; code=&quot;55561003&quot; codeSystem=&quot;2.16.840.1.113883.6.96&quot; codeSystemName=&quot;SNOMED CT&quot;&gt;
                                                &lt;originalText&gt;
                                                    &lt;reference value=&quot;#PROBST1567402&quot;/&gt;
                                                &lt;/originalText&gt;
                                            &lt;/value&gt;
                                        &lt;/observation&gt;
                                    &lt;/entryRelationship&gt;
                                &lt;/observation&gt;
                            &lt;/entryRelationship&gt;
                        &lt;/act&gt;
                    &lt;/entry&gt;
                &lt;/section&gt;
            &lt;/component&gt;
        &lt;/structuredBody&gt;
    &lt;/component&gt;
&lt;/ClinicalDocument&gt;'
  end
end
